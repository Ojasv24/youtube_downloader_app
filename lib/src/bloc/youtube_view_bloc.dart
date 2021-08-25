import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:youtube_downloader_nullsafety/src/bloc/youtube_list_bloc.dart';
import 'package:youtube_downloader_nullsafety/src/model/download_info.dart';
import 'package:youtube_downloader_nullsafety/src/model/file_info.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_view_state.dart';
import 'package:youtube_downloader_nullsafety/src/repository/download_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/ffmpeg_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_hive_repository.dart';
import 'package:youtube_downloader_nullsafety/src/repository/youtube_repository.dart';

class YoutubeViewBloc extends Cubit<YoutubeViewState> {
  final YoutubeRepository _youtubeRepository;
  final DownloadRepository _downloadRepository;
  final FfmpedRepository _ffmpegRepository;
  final YoutubeHiveRepository _youtubeHiveRepository;

  YoutubeViewBloc(this._youtubeRepository, this._downloadRepository,
      this._ffmpegRepository, this._youtubeHiveRepository)
      : super(YoutubeViewState());

  void urlSubmit(String url) async {
    if (state is Loading || state is Downloading) {
      return;
    }
    emit(YoutubeViewState.loading());
    final info = await _youtubeRepository.extractInfo(url);
    emit(YoutubeViewState.data(info));
  }

  void changeQuality(int index) {
    if (state is Data) {
      emit((state as Data).copyWith.videoInfo(selectedQualityIndex: index));
    }
  }

  void download() async {
    if (state is Data) {
      emit(YoutubeViewState.startedDownloading((state as Data).videoInfo));

      final videoInfo = (state as StartedDownloading).videoInfo;

      final downloadStreams = await _youtubeRepository.extractStreams(
          videoInfo.url,
          videoInfo.videoQualities[videoInfo.selectedQualityIndex]);

      final fileName = _getEscapedTitle(videoInfo.videoTitle);

      final directoryPath = await _getDirectoryPath();

      final videoFileName = directoryPath + '/$fileName.temp.mp4';
      await _downloadRepository.downloadMultipart(
        downloadStreams.videoStreamUrl,
        videoFileName,
        8,
        onReceiveProgress: (current, total) => emit(
            YoutubeViewState.downloading(videoInfo,
                DownloadInfo(ProgressType.VideoDownload, current, total))),
      );

      final audioFileName = directoryPath + '/$fileName.temp.mp3';
      await _downloadRepository.downloadMultipart(
        downloadStreams.audioStreamUrl,
        audioFileName,
        8,
        onReceiveProgress: (current, total) => emit(
            YoutubeViewState.downloading(videoInfo,
                DownloadInfo(ProgressType.AudioDownload, current, total))),
      );
      emit(YoutubeViewState.downloading(
          videoInfo, DownloadInfo(ProgressType.Merge, 0, 100)));
      final finalFileName = directoryPath + '/$fileName.mp4';
      await _ffmpegRepository.mergeVideoAndAudio(
          videoFileName, audioFileName, finalFileName);
      await _youtubeHiveRepository
          .addToBox(FileInfo(videoInfo: videoInfo, filePath: finalFileName));
      emit(YoutubeViewState.data(videoInfo));
      GetIt.I<YoutubeListBloc>().reload();
    }
  }
}

String _getEscapedTitle(String title) {
  return '$title'
      .replaceAll(r'\', '')
      .replaceAll('/', '')
      .replaceAll('*', '')
      .replaceAll('?', '')
      .replaceAll('"', '')
      .replaceAll('<', '')
      .replaceAll('>', '')
      .replaceAll('|', '');
}

Future<bool> _requestPermission(Permission permission) async {
  if (await permission.isGranted) {
    return true;
  } else {
    var result = await permission.request();
    if (result == PermissionStatus.granted) {
      return true;
    } else {
      return false;
    }
  }
}

Future<String> _getDirectoryPath() async {
  if (await _requestPermission(Permission.storage) &&
      await _requestPermission(Permission.manageExternalStorage)) {
    var directory = await getExternalStorageDirectory();
    String newPath = "";
    List<String> paths = directory!.path.split("/");
    for (int x = 1; x < paths.length; x++) {
      String folder = paths[x];
      if (folder != "Android") {
        newPath += "/" + folder;
      } else {
        break;
      }
    }
    newPath = newPath + "/YTdownloader";
    directory = Directory(newPath);
    if (!await directory.exists()) {
      await directory.create(recursive: false);
    }
    return directory.path;
  }
  return '';
}
