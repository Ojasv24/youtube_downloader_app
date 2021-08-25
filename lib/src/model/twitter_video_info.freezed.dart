// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'twitter_video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TwitterVideoInfo _$TwitterVideoInfoFromJson(Map<String, dynamic> json) {
  return _TwitterVideoInfo.fromJson(json);
}

/// @nodoc
class _$TwitterVideoInfoTearOff {
  const _$TwitterVideoInfoTearOff();

  _TwitterVideoInfo call({required String tweet}) {
    return _TwitterVideoInfo(
      tweet: tweet,
    );
  }

  TwitterVideoInfo fromJson(Map<String, Object> json) {
    return TwitterVideoInfo.fromJson(json);
  }
}

/// @nodoc
const $TwitterVideoInfo = _$TwitterVideoInfoTearOff();

/// @nodoc
mixin _$TwitterVideoInfo {
  String get tweet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwitterVideoInfoCopyWith<TwitterVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterVideoInfoCopyWith<$Res> {
  factory $TwitterVideoInfoCopyWith(
          TwitterVideoInfo value, $Res Function(TwitterVideoInfo) then) =
      _$TwitterVideoInfoCopyWithImpl<$Res>;
  $Res call({String tweet});
}

/// @nodoc
class _$TwitterVideoInfoCopyWithImpl<$Res>
    implements $TwitterVideoInfoCopyWith<$Res> {
  _$TwitterVideoInfoCopyWithImpl(this._value, this._then);

  final TwitterVideoInfo _value;
  // ignore: unused_field
  final $Res Function(TwitterVideoInfo) _then;

  @override
  $Res call({
    Object? tweet = freezed,
  }) {
    return _then(_value.copyWith(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TwitterVideoInfoCopyWith<$Res>
    implements $TwitterVideoInfoCopyWith<$Res> {
  factory _$TwitterVideoInfoCopyWith(
          _TwitterVideoInfo value, $Res Function(_TwitterVideoInfo) then) =
      __$TwitterVideoInfoCopyWithImpl<$Res>;
  @override
  $Res call({String tweet});
}

/// @nodoc
class __$TwitterVideoInfoCopyWithImpl<$Res>
    extends _$TwitterVideoInfoCopyWithImpl<$Res>
    implements _$TwitterVideoInfoCopyWith<$Res> {
  __$TwitterVideoInfoCopyWithImpl(
      _TwitterVideoInfo _value, $Res Function(_TwitterVideoInfo) _then)
      : super(_value, (v) => _then(v as _TwitterVideoInfo));

  @override
  _TwitterVideoInfo get _value => super._value as _TwitterVideoInfo;

  @override
  $Res call({
    Object? tweet = freezed,
  }) {
    return _then(_TwitterVideoInfo(
      tweet: tweet == freezed
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TwitterVideoInfo implements _TwitterVideoInfo {
  const _$_TwitterVideoInfo({required this.tweet});

  factory _$_TwitterVideoInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_TwitterVideoInfoFromJson(json);

  @override
  final String tweet;

  @override
  String toString() {
    return 'TwitterVideoInfo(tweet: $tweet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TwitterVideoInfo &&
            (identical(other.tweet, tweet) ||
                const DeepCollectionEquality().equals(other.tweet, tweet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tweet);

  @JsonKey(ignore: true)
  @override
  _$TwitterVideoInfoCopyWith<_TwitterVideoInfo> get copyWith =>
      __$TwitterVideoInfoCopyWithImpl<_TwitterVideoInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TwitterVideoInfoToJson(this);
  }
}

abstract class _TwitterVideoInfo implements TwitterVideoInfo {
  const factory _TwitterVideoInfo({required String tweet}) =
      _$_TwitterVideoInfo;

  factory _TwitterVideoInfo.fromJson(Map<String, dynamic> json) =
      _$_TwitterVideoInfo.fromJson;

  @override
  String get tweet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TwitterVideoInfoCopyWith<_TwitterVideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
