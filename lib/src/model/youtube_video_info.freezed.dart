// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'youtube_video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

YoutubeVideoInfo _$YoutubeVideoInfoFromJson(Map<String, dynamic> json) {
  return _YoutubeVideoInfo.fromJson(json);
}

/// @nodoc
class _$YoutubeVideoInfoTearOff {
  const _$YoutubeVideoInfoTearOff();

  _YoutubeVideoInfo call(
      {required String videoTitle,
      required String author,
      required String timestamp}) {
    return _YoutubeVideoInfo(
      videoTitle: videoTitle,
      author: author,
      timestamp: timestamp,
    );
  }

  YoutubeVideoInfo fromJson(Map<String, Object> json) {
    return YoutubeVideoInfo.fromJson(json);
  }
}

/// @nodoc
const $YoutubeVideoInfo = _$YoutubeVideoInfoTearOff();

/// @nodoc
mixin _$YoutubeVideoInfo {
  String get videoTitle => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoutubeVideoInfoCopyWith<YoutubeVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeVideoInfoCopyWith<$Res> {
  factory $YoutubeVideoInfoCopyWith(
          YoutubeVideoInfo value, $Res Function(YoutubeVideoInfo) then) =
      _$YoutubeVideoInfoCopyWithImpl<$Res>;
  $Res call({String videoTitle, String author, String timestamp});
}

/// @nodoc
class _$YoutubeVideoInfoCopyWithImpl<$Res>
    implements $YoutubeVideoInfoCopyWith<$Res> {
  _$YoutubeVideoInfoCopyWithImpl(this._value, this._then);

  final YoutubeVideoInfo _value;
  // ignore: unused_field
  final $Res Function(YoutubeVideoInfo) _then;

  @override
  $Res call({
    Object? videoTitle = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      videoTitle: videoTitle == freezed
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$YoutubeVideoInfoCopyWith<$Res>
    implements $YoutubeVideoInfoCopyWith<$Res> {
  factory _$YoutubeVideoInfoCopyWith(
          _YoutubeVideoInfo value, $Res Function(_YoutubeVideoInfo) then) =
      __$YoutubeVideoInfoCopyWithImpl<$Res>;
  @override
  $Res call({String videoTitle, String author, String timestamp});
}

/// @nodoc
class __$YoutubeVideoInfoCopyWithImpl<$Res>
    extends _$YoutubeVideoInfoCopyWithImpl<$Res>
    implements _$YoutubeVideoInfoCopyWith<$Res> {
  __$YoutubeVideoInfoCopyWithImpl(
      _YoutubeVideoInfo _value, $Res Function(_YoutubeVideoInfo) _then)
      : super(_value, (v) => _then(v as _YoutubeVideoInfo));

  @override
  _YoutubeVideoInfo get _value => super._value as _YoutubeVideoInfo;

  @override
  $Res call({
    Object? videoTitle = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_YoutubeVideoInfo(
      videoTitle: videoTitle == freezed
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_YoutubeVideoInfo implements _YoutubeVideoInfo {
  const _$_YoutubeVideoInfo(
      {required this.videoTitle,
      required this.author,
      required this.timestamp});

  factory _$_YoutubeVideoInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_YoutubeVideoInfoFromJson(json);

  @override
  final String videoTitle;
  @override
  final String author;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'YoutubeVideoInfo(videoTitle: $videoTitle, author: $author, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YoutubeVideoInfo &&
            (identical(other.videoTitle, videoTitle) ||
                const DeepCollectionEquality()
                    .equals(other.videoTitle, videoTitle)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoTitle) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(timestamp);

  @JsonKey(ignore: true)
  @override
  _$YoutubeVideoInfoCopyWith<_YoutubeVideoInfo> get copyWith =>
      __$YoutubeVideoInfoCopyWithImpl<_YoutubeVideoInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_YoutubeVideoInfoToJson(this);
  }
}

abstract class _YoutubeVideoInfo implements YoutubeVideoInfo {
  const factory _YoutubeVideoInfo(
      {required String videoTitle,
      required String author,
      required String timestamp}) = _$_YoutubeVideoInfo;

  factory _YoutubeVideoInfo.fromJson(Map<String, dynamic> json) =
      _$_YoutubeVideoInfo.fromJson;

  @override
  String get videoTitle => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YoutubeVideoInfoCopyWith<_YoutubeVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
