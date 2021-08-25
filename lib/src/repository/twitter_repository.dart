// import 'dart:convert';
// import 'dart:io';

// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:youtube_downloader_nullsafety/src/core/model/download_info.dart';
// import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';
// import 'package:youtube_downloader_nullsafety/src/core/repository/i_source_repository.dart';
// import 'package:youtube_downloader_nullsafety/src/model/twitter_video_info.dart';
// import 'package:youtube_downloader_nullsafety/src/model/youtube_video_info.dart';
// import 'package:youtube_downloader_nullsafety/src/utils/download_utils.dart';
// import 'package:youtube_downloader_nullsafety/src/utils/ffmpeg_utils.dart';
// import 'package:youtube_downloader_nullsafety/src/utils/twitter_Api_utils.dart';

// class _YoutubeStream {
//   final Uri audioStreamUrl;
//   final Uri videoStreamUrl;

//   _YoutubeStream(this.audioStreamUrl, this.videoStreamUrl);
// }

// class TwitterRepository implements ISourceRepository<TwitterVideoInfo> {
//   @override
//   Future<bool> download(VideoInfo<TwitterVideoInfo> videoInfo,
//       {DownloadCallback? callback}) async {
//     final downloadStreams = await _extractStreams(
//         videoInfo.url, videoInfo.videoQualities[videoInfo.selected]);

//     final fileName = _getEscapedTitle(videoInfo.extra!.videoTitle);

//     final directoryPath = await _getDirectoryPath();

//     final videoFileName = directoryPath + '/$fileName.temp.mp4';
//     await downloadMultipart(
//       downloadStreams.videoStreamUrl,
//       videoFileName,
//       8,
//       onReceiveProgress: (current, total) => callback!(
//           DownloadInfo(current, total, type: ProgressType.VideoDownload)),
//     );

//     final audioFileName = directoryPath + '/$fileName.temp.mp3';
//     await downloadMultipart(
//       downloadStreams.audioStreamUrl,
//       audioFileName,
//       8,
//       onReceiveProgress: (current, total) => callback!(
//           DownloadInfo(current, total, type: ProgressType.AudioDownload)),
//     );

//     final finalFileName = directoryPath + '/$fileName.mp4';
//     await mergeVideoAndAudio(videoFileName, audioFileName, finalFileName);
//     return true;
//   }

//   @override
//   Future<VideoInfo<TwitterVideoInfo>> getInfo(String url) async {
//     TwitterInfo twitterInfo = await getTwitterInfo(url);

//     return VideoInfo<TwitterVideoInfo>(
//       url,
//       twitterInfo.thumbnailUrl,
//       twitterInfo.videoQualities,
//       extra: TwitterVideoInfo(
//         tweet: twitterInfo.tweet,
//       ),
//     );
//   }

//   String _durationToString(Duration? duration) {
//     if (duration == null) {
//       return 'null';
//     }
//     String twoDigits(int n) => n.toString().padLeft(2, "0");
//     String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
//     String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

//     if (duration.inHours.remainder(60) == 0) {
//       if (duration.inMinutes.remainder(60) == 0) {
//         return "0:$twoDigitSeconds";
//       }
//       return "$twoDigitMinutes:$twoDigitSeconds";
//     }

//     return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
//   }

//   Future<_YoutubeStream> _extractStreams(
//       String url, String qualityLabel) async {
//     final manifest = await _yt.videos.streamsClient.getManifest(url);

//     final videoStreamInfo = manifest.videoOnly
//         .firstWhere((element) => element.videoQualityLabel == qualityLabel);
//     final audioStreamInfo = manifest.audioOnly.withHighestBitrate();

//     return _YoutubeStream(
//       audioStreamInfo.url,
//       videoStreamInfo.url,
//     );
//   }

//   String _getEscapedTitle(String title) {
//     return '$title'
//         .replaceAll(r'\', '')
//         .replaceAll('/', '')
//         .replaceAll('*', '')
//         .replaceAll('?', '')
//         .replaceAll('"', '')
//         .replaceAll('<', '')
//         .replaceAll('>', '')
//         .replaceAll('|', '');
//   }

//   Future<bool> _requestPermission(Permission permission) async {
//     if (await permission.isGranted) {
//       return true;
//     } else {
//       var result = await permission.request();
//       if (result == PermissionStatus.granted) {
//         return true;
//       } else {
//         return false;
//       }
//     }
//   }

//   Future<String> _getDirectoryPath() async {
//     if (await _requestPermission(Permission.storage) &&
//         await _requestPermission(Permission.manageExternalStorage)) {
//       var directory = await getExternalStorageDirectory();
//       String newPath = "";
//       List<String> paths = directory!.path.split("/");
//       for (int x = 1; x < paths.length; x++) {
//         String folder = paths[x];
//         if (folder != "Android") {
//           newPath += "/" + folder;
//         } else {
//           break;
//         }
//       }
//       newPath = newPath + "/YTdownloader";
//       directory = Directory(newPath);
//       if (!await directory.exists()) {
//         await directory.create(recursive: false);
//       }
//       return directory.path;
//     }
//     return '';
//   }
// }
