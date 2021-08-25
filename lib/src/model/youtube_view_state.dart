import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/model/download_info.dart';
import 'package:youtube_downloader_nullsafety/src/model/video_info.dart';

part 'youtube_view_state.freezed.dart';

@freezed
class YoutubeViewState with _$YoutubeViewState {
  const factory YoutubeViewState() = Initial;
  const factory YoutubeViewState.loading() = Loading;
  const factory YoutubeViewState.data(VideoInfo videoInfo) = Data;
  const factory YoutubeViewState.startedDownloading(VideoInfo videoInfo) =
      StartedDownloading;
  const factory YoutubeViewState.downloading(
      VideoInfo videoInfo, DownloadInfo downloadInfo) = Downloading;
  const factory YoutubeViewState.downloaded(VideoInfo videoInfo) = Downloaded;
}
