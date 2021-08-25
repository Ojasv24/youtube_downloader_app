import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_info.freezed.dart';

enum ProgressType {
  VideoDownload,
  AudioDownload,
  Merge,
}

@freezed
class DownloadInfo with _$DownloadInfo {
  const factory DownloadInfo(int current, int total, {ProgressType? type}) =
      _DownloadInfo;
}
