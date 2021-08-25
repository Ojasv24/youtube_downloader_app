import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/download_info.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState() = Initial;
  const factory ViewState.loading() = Loading;
  const factory ViewState.data(VideoInfo<T> videoInfo) = Data;
  const factory ViewState.starting(VideoInfo<T> videoInfo) = Starting;
  const factory ViewState.downloading(
      VideoInfo<T> videoInfo, DownloadInfo downloadInfo) = Downloading;
}
