import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_video_info.freezed.dart';
part 'twitter_video_info.g.dart';

@freezed
class TwitterVideoInfo with _$TwitterVideoInfo {
  const factory TwitterVideoInfo({
    required String tweet,
  }) = _TwitterVideoInfo;

  factory TwitterVideoInfo.fromJson(Map<String, dynamic> json) =>
      _$TwitterVideoInfoFromJson(json);
}
