// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'youtube_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$YoutubeViewStateTearOff {
  const _$YoutubeViewStateTearOff();

  Initial call() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Data data(VideoInfo videoInfo) {
    return Data(
      videoInfo,
    );
  }

  StartedDownloading startedDownloading(VideoInfo videoInfo) {
    return StartedDownloading(
      videoInfo,
    );
  }

  Downloading downloading(VideoInfo videoInfo, DownloadInfo downloadInfo) {
    return Downloading(
      videoInfo,
      downloadInfo,
    );
  }

  Downloaded downloaded(VideoInfo videoInfo) {
    return Downloaded(
      videoInfo,
    );
  }
}

/// @nodoc
const $YoutubeViewState = _$YoutubeViewStateTearOff();

/// @nodoc
mixin _$YoutubeViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoutubeViewStateCopyWith<$Res> {
  factory $YoutubeViewStateCopyWith(
          YoutubeViewState value, $Res Function(YoutubeViewState) then) =
      _$YoutubeViewStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$YoutubeViewStateCopyWithImpl<$Res>
    implements $YoutubeViewStateCopyWith<$Res> {
  _$YoutubeViewStateCopyWithImpl(this._value, this._then);

  final YoutubeViewState _value;
  // ignore: unused_field
  final $Res Function(YoutubeViewState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'YoutubeViewState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Initial implements YoutubeViewState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'YoutubeViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements YoutubeViewState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo});

  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object? videoInfo = freezed,
  }) {
    return _then(Data(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
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

class _$Data implements Data {
  const _$Data(this.videoInfo);

  @override
  final VideoInfo videoInfo;

  @override
  String toString() {
    return 'YoutubeViewState.data(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return data(videoInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(videoInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements YoutubeViewState {
  const factory Data(VideoInfo videoInfo) = _$Data;

  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartedDownloadingCopyWith<$Res> {
  factory $StartedDownloadingCopyWith(
          StartedDownloading value, $Res Function(StartedDownloading) then) =
      _$StartedDownloadingCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo});

  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class _$StartedDownloadingCopyWithImpl<$Res>
    extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $StartedDownloadingCopyWith<$Res> {
  _$StartedDownloadingCopyWithImpl(
      StartedDownloading _value, $Res Function(StartedDownloading) _then)
      : super(_value, (v) => _then(v as StartedDownloading));

  @override
  StartedDownloading get _value => super._value as StartedDownloading;

  @override
  $Res call({
    Object? videoInfo = freezed,
  }) {
    return _then(StartedDownloading(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
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

class _$StartedDownloading implements StartedDownloading {
  const _$StartedDownloading(this.videoInfo);

  @override
  final VideoInfo videoInfo;

  @override
  String toString() {
    return 'YoutubeViewState.startedDownloading(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartedDownloading &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @JsonKey(ignore: true)
  @override
  $StartedDownloadingCopyWith<StartedDownloading> get copyWith =>
      _$StartedDownloadingCopyWithImpl<StartedDownloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return startedDownloading(videoInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if (startedDownloading != null) {
      return startedDownloading(videoInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return startedDownloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (startedDownloading != null) {
      return startedDownloading(this);
    }
    return orElse();
  }
}

abstract class StartedDownloading implements YoutubeViewState {
  const factory StartedDownloading(VideoInfo videoInfo) = _$StartedDownloading;

  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartedDownloadingCopyWith<StartedDownloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadingCopyWith<$Res> {
  factory $DownloadingCopyWith(
          Downloading value, $Res Function(Downloading) then) =
      _$DownloadingCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo, DownloadInfo downloadInfo});

  $VideoInfoCopyWith<$Res> get videoInfo;
  $DownloadInfoCopyWith<$Res> get downloadInfo;
}

/// @nodoc
class _$DownloadingCopyWithImpl<$Res>
    extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $DownloadingCopyWith<$Res> {
  _$DownloadingCopyWithImpl(
      Downloading _value, $Res Function(Downloading) _then)
      : super(_value, (v) => _then(v as Downloading));

  @override
  Downloading get _value => super._value as Downloading;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? downloadInfo = freezed,
  }) {
    return _then(Downloading(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
      downloadInfo == freezed
          ? _value.downloadInfo
          : downloadInfo // ignore: cast_nullable_to_non_nullable
              as DownloadInfo,
    ));
  }

  @override
  $VideoInfoCopyWith<$Res> get videoInfo {
    return $VideoInfoCopyWith<$Res>(_value.videoInfo, (value) {
      return _then(_value.copyWith(videoInfo: value));
    });
  }

  @override
  $DownloadInfoCopyWith<$Res> get downloadInfo {
    return $DownloadInfoCopyWith<$Res>(_value.downloadInfo, (value) {
      return _then(_value.copyWith(downloadInfo: value));
    });
  }
}

/// @nodoc

class _$Downloading implements Downloading {
  const _$Downloading(this.videoInfo, this.downloadInfo);

  @override
  final VideoInfo videoInfo;
  @override
  final DownloadInfo downloadInfo;

  @override
  String toString() {
    return 'YoutubeViewState.downloading(videoInfo: $videoInfo, downloadInfo: $downloadInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Downloading &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)) &&
            (identical(other.downloadInfo, downloadInfo) ||
                const DeepCollectionEquality()
                    .equals(other.downloadInfo, downloadInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(videoInfo) ^
      const DeepCollectionEquality().hash(downloadInfo);

  @JsonKey(ignore: true)
  @override
  $DownloadingCopyWith<Downloading> get copyWith =>
      _$DownloadingCopyWithImpl<Downloading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return downloading(videoInfo, downloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(videoInfo, downloadInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class Downloading implements YoutubeViewState {
  const factory Downloading(VideoInfo videoInfo, DownloadInfo downloadInfo) =
      _$Downloading;

  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  DownloadInfo get downloadInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadingCopyWith<Downloading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadedCopyWith<$Res> {
  factory $DownloadedCopyWith(
          Downloaded value, $Res Function(Downloaded) then) =
      _$DownloadedCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo});

  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class _$DownloadedCopyWithImpl<$Res>
    extends _$YoutubeViewStateCopyWithImpl<$Res>
    implements $DownloadedCopyWith<$Res> {
  _$DownloadedCopyWithImpl(Downloaded _value, $Res Function(Downloaded) _then)
      : super(_value, (v) => _then(v as Downloaded));

  @override
  Downloaded get _value => super._value as Downloaded;

  @override
  $Res call({
    Object? videoInfo = freezed,
  }) {
    return _then(Downloaded(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo,
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

class _$Downloaded implements Downloaded {
  const _$Downloaded(this.videoInfo);

  @override
  final VideoInfo videoInfo;

  @override
  String toString() {
    return 'YoutubeViewState.downloaded(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Downloaded &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @JsonKey(ignore: true)
  @override
  $DownloadedCopyWith<Downloaded> get copyWith =>
      _$DownloadedCopyWithImpl<Downloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo videoInfo) data,
    required TResult Function(VideoInfo videoInfo) startedDownloading,
    required TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)
        downloading,
    required TResult Function(VideoInfo videoInfo) downloaded,
  }) {
    return downloaded(videoInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo videoInfo)? data,
    TResult Function(VideoInfo videoInfo)? startedDownloading,
    TResult Function(VideoInfo videoInfo, DownloadInfo downloadInfo)?
        downloading,
    TResult Function(VideoInfo videoInfo)? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(videoInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Data value) data,
    required TResult Function(StartedDownloading value) startedDownloading,
    required TResult Function(Downloading value) downloading,
    required TResult Function(Downloaded value) downloaded,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Data value)? data,
    TResult Function(StartedDownloading value)? startedDownloading,
    TResult Function(Downloading value)? downloading,
    TResult Function(Downloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class Downloaded implements YoutubeViewState {
  const factory Downloaded(VideoInfo videoInfo) = _$Downloaded;

  VideoInfo get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadedCopyWith<Downloaded> get copyWith =>
      throw _privateConstructorUsedError;
}
