// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileInfo<T> _$_$_FileInfoFromJson<T>(Map<String, dynamic> json) {
  return _$_FileInfo<T>(
    videoInfo: VideoInfo.fromJson(json['videoInfo'] as Map<String, dynamic>),
    filePath: json['filePath'] as String,
  );
}

Map<String, dynamic> _$_$_FileInfoToJson<T>(_$_FileInfo<T> instance) =>
    <String, dynamic>{
      'videoInfo': instance.videoInfo,
      'filePath': instance.filePath,
    };
