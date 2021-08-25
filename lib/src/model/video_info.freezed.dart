// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoInfo _$VideoInfoFromJson(Map<String, dynamic> json) {
  return _VideoInfo.fromJson(json);
}

/// @nodoc
class _$VideoInfoTearOff {
  const _$VideoInfoTearOff();

  _VideoInfo call(
      {required String url,
      required String videoTitle,
      required String author,
      required String timestamp,
      required String thumbnailUrl,
      required List<String> videoQualities,
      required int selectedQualityIndex}) {
    return _VideoInfo(
      url: url,
      videoTitle: videoTitle,
      author: author,
      timestamp: timestamp,
      thumbnailUrl: thumbnailUrl,
      videoQualities: videoQualities,
      selectedQualityIndex: selectedQualityIndex,
    );
  }

  VideoInfo fromJson(Map<String, Object> json) {
    return VideoInfo.fromJson(json);
  }
}

/// @nodoc
const $VideoInfo = _$VideoInfoTearOff();

/// @nodoc
mixin _$VideoInfo {
  String get url => throw _privateConstructorUsedError;
  String get videoTitle => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  List<String> get videoQualities => throw _privateConstructorUsedError;
  int get selectedQualityIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoInfoCopyWith<VideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoInfoCopyWith<$Res> {
  factory $VideoInfoCopyWith(VideoInfo value, $Res Function(VideoInfo) then) =
      _$VideoInfoCopyWithImpl<$Res>;
  $Res call(
      {String url,
      String videoTitle,
      String author,
      String timestamp,
      String thumbnailUrl,
      List<String> videoQualities,
      int selectedQualityIndex});
}

/// @nodoc
class _$VideoInfoCopyWithImpl<$Res> implements $VideoInfoCopyWith<$Res> {
  _$VideoInfoCopyWithImpl(this._value, this._then);

  final VideoInfo _value;
  // ignore: unused_field
  final $Res Function(VideoInfo) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? videoTitle = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoQualities = freezed,
    Object? selectedQualityIndex = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoQualities: videoQualities == freezed
          ? _value.videoQualities
          : videoQualities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedQualityIndex: selectedQualityIndex == freezed
          ? _value.selectedQualityIndex
          : selectedQualityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$VideoInfoCopyWith<$Res> implements $VideoInfoCopyWith<$Res> {
  factory _$VideoInfoCopyWith(
          _VideoInfo value, $Res Function(_VideoInfo) then) =
      __$VideoInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url,
      String videoTitle,
      String author,
      String timestamp,
      String thumbnailUrl,
      List<String> videoQualities,
      int selectedQualityIndex});
}

/// @nodoc
class __$VideoInfoCopyWithImpl<$Res> extends _$VideoInfoCopyWithImpl<$Res>
    implements _$VideoInfoCopyWith<$Res> {
  __$VideoInfoCopyWithImpl(_VideoInfo _value, $Res Function(_VideoInfo) _then)
      : super(_value, (v) => _then(v as _VideoInfo));

  @override
  _VideoInfo get _value => super._value as _VideoInfo;

  @override
  $Res call({
    Object? url = freezed,
    Object? videoTitle = freezed,
    Object? author = freezed,
    Object? timestamp = freezed,
    Object? thumbnailUrl = freezed,
    Object? videoQualities = freezed,
    Object? selectedQualityIndex = freezed,
  }) {
    return _then(_VideoInfo(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
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
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoQualities: videoQualities == freezed
          ? _value.videoQualities
          : videoQualities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedQualityIndex: selectedQualityIndex == freezed
          ? _value.selectedQualityIndex
          : selectedQualityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoInfo implements _VideoInfo {
  const _$_VideoInfo(
      {required this.url,
      required this.videoTitle,
      required this.author,
      required this.timestamp,
      required this.thumbnailUrl,
      required this.videoQualities,
      required this.selectedQualityIndex});

  factory _$_VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoInfoFromJson(json);

  @override
  final String url;
  @override
  final String videoTitle;
  @override
  final String author;
  @override
  final String timestamp;
  @override
  final String thumbnailUrl;
  @override
  final List<String> videoQualities;
  @override
  final int selectedQualityIndex;

  @override
  String toString() {
    return 'VideoInfo(url: $url, videoTitle: $videoTitle, author: $author, timestamp: $timestamp, thumbnailUrl: $thumbnailUrl, videoQualities: $videoQualities, selectedQualityIndex: $selectedQualityIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoInfo &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.videoTitle, videoTitle) ||
                const DeepCollectionEquality()
                    .equals(other.videoTitle, videoTitle)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnailUrl, thumbnailUrl)) &&
            (identical(other.videoQualities, videoQualities) ||
                const DeepCollectionEquality()
                    .equals(other.videoQualities, videoQualities)) &&
            (identical(other.selectedQualityIndex, selectedQualityIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedQualityIndex, selectedQualityIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(videoTitle) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(thumbnailUrl) ^
      const DeepCollectionEquality().hash(videoQualities) ^
      const DeepCollectionEquality().hash(selectedQualityIndex);

  @JsonKey(ignore: true)
  @override
  _$VideoInfoCopyWith<_VideoInfo> get copyWith =>
      __$VideoInfoCopyWithImpl<_VideoInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoInfoToJson(this);
  }
}

abstract class _VideoInfo implements VideoInfo {
  const factory _VideoInfo(
      {required String url,
      required String videoTitle,
      required String author,
      required String timestamp,
      required String thumbnailUrl,
      required List<String> videoQualities,
      required int selectedQualityIndex}) = _$_VideoInfo;

  factory _VideoInfo.fromJson(Map<String, dynamic> json) =
      _$_VideoInfo.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get videoTitle => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @override
  List<String> get videoQualities => throw _privateConstructorUsedError;
  @override
  int get selectedQualityIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VideoInfoCopyWith<_VideoInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
