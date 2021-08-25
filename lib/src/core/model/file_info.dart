import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/core/model/video_info.dart';

part 'file_info.freezed.dart';
part 'file_info.g.dart';

@freezed
class FileInfo<T> with _$FileInfo<T> {
  const factory FileInfo({
    required VideoInfo<T> videoInfo,
    required String filePath,
  }) = _FileInfo;

  factory FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);
}
