// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoInfo _$_$_VideoInfoFromJson(Map<String, dynamic> json) {
  return _$_VideoInfo(
    url: json['url'] as String,
    videoTitle: json['videoTitle'] as String,
    author: json['author'] as String,
    timestamp: json['timestamp'] as String,
    thumbnailUrl: json['thumbnailUrl'] as String,
    videoQualities: (json['videoQualities'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    selectedQualityIndex: json['selectedQualityIndex'] as int,
  );
}

Map<String, dynamic> _$_$_VideoInfoToJson(_$_VideoInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'videoTitle': instance.videoTitle,
      'author': instance.author,
      'timestamp': instance.timestamp,
      'thumbnailUrl': instance.thumbnailUrl,
      'videoQualities': instance.videoQualities,
      'selectedQualityIndex': instance.selectedQualityIndex,
    };
