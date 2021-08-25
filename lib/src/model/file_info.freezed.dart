// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'file_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileInfo _$FileInfoFromJson(Map<String, dynamic> json) {
  return _FileInfo.fromJson(json);
}

/// @nodoc
class _$FileInfoTearOff {
  const _$FileInfoTearOff();

  _FileInfo call({required VideoInfo videoInfo, required String filePath}) {
    return _FileInfo(
      videoInfo: videoInfo,
      filePath: filePath,
    );
  }

  FileInfo fromJson(Map<String, Object> json) {
    return FileInfo.fromJson(json);
  }
}

/// @nodoc
const $FileInfo = _$FileInfoTearOff();

/// @nodoc
mixin _$FileInfo {
  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileInfoCopyWith<FileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) then) =
      _$FileInfoCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo, String filePath});

  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  final FileInfo _value;
  // ignore: unused_field
  final $Res Function(FileInfo) _then;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      videoInfo: videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $VideoInfoCopyWith<$Res> get videoInfo {
    return $VideoInfoCopyWith<$Res>(_value.videoInfo, (value) {
      return _then(_value.copyWith(videoInfo: value));
    });
  }
}

/// @nodoc
abstract class _$FileInfoCopyWith<$Res> implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) then) =
      __$FileInfoCopyWithImpl<$Res>;
  @override
  $Res call({VideoInfo videoInfo, String filePath});

  @override
  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class __$FileInfoCopyWithImpl<$Res> extends _$FileInfoCopyWithImpl<$Res>
    implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(_FileInfo _value, $Res Function(_FileInfo) _then)
      : super(_value, (v) => _then(v as _FileInfo));

  @override
  _FileInfo get _value => super._value as _FileInfo;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_FileInfo(
      videoInfo: videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileInfo implements _FileInfo {
  const _$_FileInfo({required this.videoInfo, required this.filePath});

  factory _$_FileInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_FileInfoFromJson(json);

  @override
  final VideoInfo videoInfo;
  @override
  final String filePath;

  @override
  String toString() {
    return 'FileInfo(videoInfo: $videoInfo, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfo &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoInfo) ^
      const DeepCollectionEquality().hash(filePath);

  @JsonKey(ignore: true)
  @override
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FileInfoToJson(this);
  }
}

abstract class _FileInfo implements FileInfo {
  const factory _FileInfo(
      {required VideoInfo videoInfo, required String filePath}) = _$_FileInfo;

  factory _FileInfo.fromJson(Map<String, dynamic> json) = _$_FileInfo.fromJson;

  @override
  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  @override
  String get filePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
