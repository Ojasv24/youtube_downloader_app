import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_stream.freezed.dart';

@freezed
class YoutubeStream with _$YoutubeStream {
  const factory YoutubeStream({
    required Uri videoStreamUrl,
    required Uri audioStreamUrl,
  }) = _YoutubeStream;
}
