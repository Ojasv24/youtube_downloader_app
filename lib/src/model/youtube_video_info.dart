import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_video_info.freezed.dart';
part 'youtube_video_info.g.dart';

@freezed
class YoutubeVideoInfo with _$YoutubeVideoInfo {
  const factory YoutubeVideoInfo({
    required String videoTitle,
    required String author,
    required String timestamp,
  }) = _YoutubeVideoInfo;

  factory YoutubeVideoInfo.fromJson(Map<String, dynamic> json) =>
      _$YoutubeVideoInfoFromJson(json);
}
