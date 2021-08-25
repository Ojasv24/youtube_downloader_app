// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoInfo<T> _$VideoInfoFromJson<T>(Map<String, dynamic> json) {
  return _videoInfo<T>.fromJson(json);
}

/// @nodoc
class _$VideoInfoTearOff {
  const _$VideoInfoTearOff();

  _videoInfo<T> call<T>(
      String url, String thumbnail, List<String> videoQualities,
      {int selected = -1, @ExtraConverter() T? extra}) {
    return _videoInfo<T>(
      url,
      thumbnail,
      videoQualities,
      selected: selected,
      extra: extra,
    );
  }

  VideoInfo<T> fromJson<T>(Map<String, Object> json) {
    return VideoInfo<T>.fromJson(json);
  }
}

/// @nodoc
const $VideoInfo = _$VideoInfoTearOff();

/// @nodoc
mixin _$VideoInfo<T> {
  String get url => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get videoQualities => throw _privateConstructorUsedError;
  int get selected => throw _privateConstructorUsedError;
  @ExtraConverter()
  T? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoInfoCopyWith<T, VideoInfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoCopyWith<T, $Res> {
  factory $VideoInfoCopyWith(
          VideoInfo<T> value, $Res Function(VideoInfo<T>) then) =
      _$VideoInfoCopyWithImpl<T, $Res>;
  $Res call(
      {String url,
      String thumbnail,
      List<String> videoQualities,
      int selected,
      @ExtraConverter() T? extra});
}

/// @nodoc
class _$VideoInfoCopyWithImpl<T, $Res> implements $VideoInfoCopyWith<T, $Res> {
  _$VideoInfoCopyWithImpl(this._value, this._then);

  final VideoInfo<T> _value;
  // ignore: unused_field
  final $Res Function(VideoInfo<T>) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? videoQualities = freezed,
    Object? selected = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoQualities: videoQualities == freezed
          ? _value.videoQualities
          : videoQualities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class _$videoInfoCopyWith<T, $Res>
    implements $VideoInfoCopyWith<T, $Res> {
  factory _$videoInfoCopyWith(
          _videoInfo<T> value, $Res Function(_videoInfo<T>) then) =
      __$videoInfoCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String url,
      String thumbnail,
      List<String> videoQualities,
      int selected,
      @ExtraConverter() T? extra});
}

/// @nodoc
class __$videoInfoCopyWithImpl<T, $Res> extends _$VideoInfoCopyWithImpl<T, $Res>
    implements _$videoInfoCopyWith<T, $Res> {
  __$videoInfoCopyWithImpl(
      _videoInfo<T> _value, $Res Function(_videoInfo<T>) _then)
      : super(_value, (v) => _then(v as _videoInfo<T>));

  @override
  _videoInfo<T> get _value => super._value as _videoInfo<T>;

  @override
  $Res call({
    Object? url = freezed,
    Object? thumbnail = freezed,
    Object? videoQualities = freezed,
    Object? selected = freezed,
    Object? extra = freezed,
  }) {
    return _then(_videoInfo<T>(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoQualities == freezed
          ? _value.videoQualities
          : videoQualities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
      extra: extra == freezed
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_videoInfo<T> implements _videoInfo<T> {
  const _$_videoInfo(this.url, this.thumbnail, this.videoQualities,
      {this.selected = -1, @ExtraConverter() this.extra});

  factory _$_videoInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_videoInfoFromJson(json);

  @override
  final String url;
  @override
  final String thumbnail;
  @override
  final List<String> videoQualities;
  @JsonKey(defaultValue: -1)
  @override
  final int selected;
  @override
  @ExtraConverter()
  final T? extra;

  @override
  String toString() {
    return 'VideoInfo<$T>(url: $url, thumbnail: $thumbnail, videoQualities: $videoQualities, selected: $selected, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _videoInfo<T> &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.videoQualities, videoQualities) ||
                const DeepCollectionEquality()
                    .equals(other.videoQualities, videoQualities)) &&
            (identical(other.selected, selected) ||
                const DeepCollectionEquality()
                    .equals(other.selected, selected)) &&
            (identical(other.extra, extra) ||
                const DeepCollectionEquality().equals(other.extra, extra)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(videoQualities) ^
      const DeepCollectionEquality().hash(selected) ^
      const DeepCollectionEquality().hash(extra);

  @JsonKey(ignore: true)
  @override
  _$videoInfoCopyWith<T, _videoInfo<T>> get copyWith =>
      __$videoInfoCopyWithImpl<T, _videoInfo<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_videoInfoToJson(this);
  }
}

abstract class _videoInfo<T> implements VideoInfo<T> {
  const factory _videoInfo(
      String url, String thumbnail, List<String> videoQualities,
      {int selected, @ExtraConverter() T? extra}) = _$_videoInfo<T>;

  factory _videoInfo.fromJson(Map<String, dynamic> json) =
      _$_videoInfo<T>.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get thumbnail => throw _privateConstructorUsedError;
  @override
  List<String> get videoQualities => throw _privateConstructorUsedError;
  @override
  int get selected => throw _privateConstructorUsedError;
  @override
  @ExtraConverter()
  T? get extra => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$videoInfoCopyWith<T, _videoInfo<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
