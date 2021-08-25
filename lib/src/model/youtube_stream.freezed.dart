// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'youtube_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$YoutubeStreamTearOff {
  const _$YoutubeStreamTearOff();

  _YoutubeStream call(
      {required Uri videoStreamUrl, required Uri audioStreamUrl}) {
    return _YoutubeStream(
      videoStreamUrl: videoStreamUrl,
      audioStreamUrl: audioStreamUrl,
    );
  }
}

/// @nodoc
const $YoutubeStream = _$YoutubeStreamTearOff();

/// @nodoc
mixin _$YoutubeStream {
  Uri get videoStreamUrl => throw _privateConstructorUsedError;
  Uri get audioStreamUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $YoutubeStreamCopyWith<YoutubeStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeStreamCopyWith<$Res> {
  factory $YoutubeStreamCopyWith(
          YoutubeStream value, $Res Function(YoutubeStream) then) =
      _$YoutubeStreamCopyWithImpl<$Res>;
  $Res call({Uri videoStreamUrl, Uri audioStreamUrl});
}

/// @nodoc
class _$YoutubeStreamCopyWithImpl<$Res>
    implements $YoutubeStreamCopyWith<$Res> {
  _$YoutubeStreamCopyWithImpl(this._value, this._then);

  final YoutubeStream _value;
  // ignore: unused_field
  final $Res Function(YoutubeStream) _then;

  @override
  $Res call({
    Object? videoStreamUrl = freezed,
    Object? audioStreamUrl = freezed,
  }) {
    return _then(_value.copyWith(
      videoStreamUrl: videoStreamUrl == freezed
          ? _value.videoStreamUrl
          : videoStreamUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      audioStreamUrl: audioStreamUrl == freezed
          ? _value.audioStreamUrl
          : audioStreamUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$YoutubeStreamCopyWith<$Res>
    implements $YoutubeStreamCopyWith<$Res> {
  factory _$YoutubeStreamCopyWith(
          _YoutubeStream value, $Res Function(_YoutubeStream) then) =
      __$YoutubeStreamCopyWithImpl<$Res>;
  @override
  $Res call({Uri videoStreamUrl, Uri audioStreamUrl});
}

/// @nodoc
class __$YoutubeStreamCopyWithImpl<$Res>
    extends _$YoutubeStreamCopyWithImpl<$Res>
    implements _$YoutubeStreamCopyWith<$Res> {
  __$YoutubeStreamCopyWithImpl(
      _YoutubeStream _value, $Res Function(_YoutubeStream) _then)
      : super(_value, (v) => _then(v as _YoutubeStream));

  @override
  _YoutubeStream get _value => super._value as _YoutubeStream;

  @override
  $Res call({
    Object? videoStreamUrl = freezed,
    Object? audioStreamUrl = freezed,
  }) {
    return _then(_YoutubeStream(
      videoStreamUrl: videoStreamUrl == freezed
          ? _value.videoStreamUrl
          : videoStreamUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      audioStreamUrl: audioStreamUrl == freezed
          ? _value.audioStreamUrl
          : audioStreamUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_YoutubeStream implements _YoutubeStream {
  const _$_YoutubeStream(
      {required this.videoStreamUrl, required this.audioStreamUrl});

  @override
  final Uri videoStreamUrl;
  @override
  final Uri audioStreamUrl;

  @override
  String toString() {
    return 'YoutubeStream(videoStreamUrl: $videoStreamUrl, audioStreamUrl: $audioStreamUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _YoutubeStream &&
            (identical(other.videoStreamUrl, videoStreamUrl) ||
                const DeepCollectionEquality()
                    .equals(other.videoStreamUrl, videoStreamUrl)) &&
            (identical(other.audioStreamUrl, audioStreamUrl) ||
                const DeepCollectionEquality()
                    .equals(other.audioStreamUrl, audioStreamUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoStreamUrl) ^
      const DeepCollectionEquality().hash(audioStreamUrl);

  @JsonKey(ignore: true)
  @override
  _$YoutubeStreamCopyWith<_YoutubeStream> get copyWith =>
      __$YoutubeStreamCopyWithImpl<_YoutubeStream>(this, _$identity);
}

abstract class _YoutubeStream implements YoutubeStream {
  const factory _YoutubeStream(
      {required Uri videoStreamUrl,
      required Uri audioStreamUrl}) = _$_YoutubeStream;

  @override
  Uri get videoStreamUrl => throw _privateConstructorUsedError;
  @override
  Uri get audioStreamUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$YoutubeStreamCopyWith<_YoutubeStream> get copyWith =>
      throw _privateConstructorUsedError;
}
