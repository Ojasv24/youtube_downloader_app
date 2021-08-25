import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_downloader_nullsafety/src/model/youtube_video_info.dart';

part 'video_info.freezed.dart';
part 'video_info.g.dart';

@freezed
class VideoInfo<T> with _$VideoInfo<T> {
  const factory VideoInfo(
    String url,
    String thumbnail,
    List<String> videoQualities, {
    @Default(-1) int selected,
    @ExtraConverter() T? extra,
  }) = _videoInfo;

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);
}

class ExtraConverter<T> implements JsonConverter<T, Object> {
  const ExtraConverter();

  @override
  T fromJson(Object json) {
    return YoutubeVideoInfo.fromJson(json as Map<String, dynamic>) as T;
    if (T == YoutubeVideoInfo) {}
    throw Exception('Unknown type ${T.runtimeType}');
  }

  @override
  Object toJson(T object) {
    if (object is YoutubeVideoInfo) {
      return object.toJson();
    }
    throw Exception('Unknown type ${object.runtimeType}');
  }
}
