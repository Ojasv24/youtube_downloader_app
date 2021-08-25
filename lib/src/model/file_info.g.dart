// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileInfo _$_$_FileInfoFromJson(Map<String, dynamic> json) {
  return _$_FileInfo(
    videoInfo: VideoInfo.fromJson(json['videoInfo'] as Map<String, dynamic>),
    filePath: json['filePath'] as String,
  );
}

Map<String, dynamic> _$_$_FileInfoToJson(_$_FileInfo instance) =>
    <String, dynamic>{
      'videoInfo': instance.videoInfo,
      'filePath': instance.filePath,
    };
