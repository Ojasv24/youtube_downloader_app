// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_videoInfo<T> _$_$_videoInfoFromJson<T>(Map<String, dynamic> json) {
  return _$_videoInfo<T>(
    json['url'] as String,
    json['thumbnail'] as String,
    (json['videoQualities'] as List<dynamic>).map((e) => e as String).toList(),
    selected: json['selected'] as int? ?? -1,
    extra: ExtraConverter<T?>().fromJson(json['extra'] as Object),
  );
}

Map<String, dynamic> _$_$_videoInfoToJson<T>(_$_videoInfo<T> instance) =>
    <String, dynamic>{
      'url': instance.url,
      'thumbnail': instance.thumbnail,
      'videoQualities': instance.videoQualities,
      'selected': instance.selected,
      'extra': ExtraConverter<T?>().toJson(instance.extra),
    };
