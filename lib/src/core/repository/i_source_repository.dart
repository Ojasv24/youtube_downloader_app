import 'package:youtube_downloader_nullsafety/src/core/model/download_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';

typedef void DownloadCallback(DownloadInfo info);

abstract class ISourceRepository<T> {
  Future<VideoInfo<T>> getInfo(String url);
  Future<String> download(VideoInfo<T> info, {DownloadCallback? callback});
}
