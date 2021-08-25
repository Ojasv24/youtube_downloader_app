// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'file_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileInfo<T> _$FileInfoFromJson<T>(Map<String, dynamic> json) {
  return _FileInfo<T>.fromJson(json);
}

/// @nodoc
class _$FileInfoTearOff {
  const _$FileInfoTearOff();

  _FileInfo<T> call<T>(
      {required VideoInfo<T> videoInfo, required String filePath}) {
    return _FileInfo<T>(
      videoInfo: videoInfo,
      filePath: filePath,
    );
  }

  FileInfo<T> fromJson<T>(Map<String, Object> json) {
    return FileInfo<T>.fromJson(json);
  }
}

/// @nodoc
const $FileInfo = _$FileInfoTearOff();

/// @nodoc
mixin _$FileInfo<T> {
  VideoInfo<T> get videoInfo => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileInfoCopyWith<T, FileInfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileInfoCopyWith<T, $Res> {
  factory $FileInfoCopyWith(
          FileInfo<T> value, $Res Function(FileInfo<T>) then) =
      _$FileInfoCopyWithImpl<T, $Res>;
  $Res call({VideoInfo<T> videoInfo, String filePath});

  $VideoInfoCopyWith<T, $Res> get videoInfo;
}

/// @nodoc
class _$FileInfoCopyWithImpl<T, $Res> implements $FileInfoCopyWith<T, $Res> {
  _$FileInfoCopyWithImpl(this._value, this._then);

  final FileInfo<T> _value;
  // ignore: unused_field
  final $Res Function(FileInfo<T>) _then;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      videoInfo: videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo<T>,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $VideoInfoCopyWith<T, $Res> get videoInfo {
    return $VideoInfoCopyWith<T, $Res>(_value.videoInfo, (value) {
      return _then(_value.copyWith(videoInfo: value));
    });
  }
}

/// @nodoc
abstract class _$FileInfoCopyWith<T, $Res>
    implements $FileInfoCopyWith<T, $Res> {
  factory _$FileInfoCopyWith(
          _FileInfo<T> value, $Res Function(_FileInfo<T>) then) =
      __$FileInfoCopyWithImpl<T, $Res>;
  @override
  $Res call({VideoInfo<T> videoInfo, String filePath});

  @override
  $VideoInfoCopyWith<T, $Res> get videoInfo;
}

/// @nodoc
class __$FileInfoCopyWithImpl<T, $Res> extends _$FileInfoCopyWithImpl<T, $Res>
    implements _$FileInfoCopyWith<T, $Res> {
  __$FileInfoCopyWithImpl(
      _FileInfo<T> _value, $Res Function(_FileInfo<T>) _then)
      : super(_value, (v) => _then(v as _FileInfo<T>));

  @override
  _FileInfo<T> get _value => super._value as _FileInfo<T>;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_FileInfo<T>(
      videoInfo: videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo<T>,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileInfo<T> implements _FileInfo<T> {
  const _$_FileInfo({required this.videoInfo, required this.filePath});

  factory _$_FileInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_FileInfoFromJson(json);

  @override
  final VideoInfo<T> videoInfo;
  @override
  final String filePath;

  @override
  String toString() {
    return 'FileInfo<$T>(videoInfo: $videoInfo, filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileInfo<T> &&
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
  _$FileInfoCopyWith<T, _FileInfo<T>> get copyWith =>
      __$FileInfoCopyWithImpl<T, _FileInfo<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FileInfoToJson(this);
  }
}

abstract class _FileInfo<T> implements FileInfo<T> {
  const factory _FileInfo(
      {required VideoInfo<T> videoInfo,
      required String filePath}) = _$_FileInfo<T>;

  factory _FileInfo.fromJson(Map<String, dynamic> json) =
      _$_FileInfo<T>.fromJson;

  @override
  VideoInfo<T> get videoInfo => throw _privateConstructorUsedError;
  @override
  String get filePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FileInfoCopyWith<T, _FileInfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
