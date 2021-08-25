import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_info.freezed.dart';
part 'video_info.g.dart';

@freezed
class VideoInfo with _$VideoInfo {
  const factory VideoInfo({
    required String url,
    required String videoTitle,
    required String author,
    required String timestamp,
    required String thumbnailUrl,
    required List<String> videoQualities,
    required int selectedQualityIndex,
  }) = _VideoInfo;

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);
}
