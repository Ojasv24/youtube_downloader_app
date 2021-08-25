// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewStateTearOff {
  const _$ViewStateTearOff();

  Initial<T> call<T>() {
    return Initial<T>();
  }

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  Data<T> data<T>(VideoInfo<T> videoInfo) {
    return Data<T>(
      videoInfo,
    );
  }

  Starting<T> starting<T>(VideoInfo<T> videoInfo) {
    return Starting<T>(
      videoInfo,
    );
  }

  Downloading<T> downloading<T>(
      VideoInfo<T> videoInfo, DownloadInfo downloadInfo) {
    return Downloading<T>(
      videoInfo,
      downloadInfo,
    );
  }
}

/// @nodoc
const $ViewState = _$ViewStateTearOff();

/// @nodoc
mixin _$ViewState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<T, $Res> {
  factory $ViewStateCopyWith(
          ViewState<T> value, $Res Function(ViewState<T>) then) =
      _$ViewStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ViewStateCopyWithImpl<T, $Res> implements $ViewStateCopyWith<T, $Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  final ViewState<T> _value;
  // ignore: unused_field
  final $Res Function(ViewState<T>) _then;
}

/// @nodoc
abstract class $InitialCopyWith<T, $Res> {
  factory $InitialCopyWith(Initial<T> value, $Res Function(Initial<T>) then) =
      _$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<T, $Res> extends _$ViewStateCopyWithImpl<T, $Res>
    implements $InitialCopyWith<T, $Res> {
  _$InitialCopyWithImpl(Initial<T> _value, $Res Function(Initial<T>) _then)
      : super(_value, (v) => _then(v as Initial<T>));

  @override
  Initial<T> get _value => super._value as Initial<T>;
}

/// @nodoc

class _$Initial<T> implements Initial<T> {
  const _$Initial();

  @override
  String toString() {
    return 'ViewState<$T>()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
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
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements ViewState<T> {
  const factory Initial() = _$Initial<T>;
}

/// @nodoc
abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$ViewStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'ViewState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
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
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements ViewState<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class $DataCopyWith<T, $Res> {
  factory $DataCopyWith(Data<T> value, $Res Function(Data<T>) then) =
      _$DataCopyWithImpl<T, $Res>;
  $Res call({VideoInfo<T> videoInfo});

  $VideoInfoCopyWith<T, $Res> get videoInfo;
}

/// @nodoc
class _$DataCopyWithImpl<T, $Res> extends _$ViewStateCopyWithImpl<T, $Res>
    implements $DataCopyWith<T, $Res> {
  _$DataCopyWithImpl(Data<T> _value, $Res Function(Data<T>) _then)
      : super(_value, (v) => _then(v as Data<T>));

  @override
  Data<T> get _value => super._value as Data<T>;

  @override
  $Res call({
    Object? videoInfo = freezed,
  }) {
    return _then(Data<T>(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo<T>,
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

class _$Data<T> implements Data<T> {
  const _$Data(this.videoInfo);

  @override
  final VideoInfo<T> videoInfo;

  @override
  String toString() {
    return 'ViewState<$T>.data(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data<T> &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<T, Data<T>> get copyWith =>
      _$DataCopyWithImpl<T, Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) {
    return data(videoInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
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
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements ViewState<T> {
  const factory Data(VideoInfo<T> videoInfo) = _$Data<T>;

  VideoInfo<T> get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<T, Data<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartingCopyWith<T, $Res> {
  factory $StartingCopyWith(
          Starting<T> value, $Res Function(Starting<T>) then) =
      _$StartingCopyWithImpl<T, $Res>;
  $Res call({VideoInfo<T> videoInfo});

  $VideoInfoCopyWith<T, $Res> get videoInfo;
}

/// @nodoc
class _$StartingCopyWithImpl<T, $Res> extends _$ViewStateCopyWithImpl<T, $Res>
    implements $StartingCopyWith<T, $Res> {
  _$StartingCopyWithImpl(Starting<T> _value, $Res Function(Starting<T>) _then)
      : super(_value, (v) => _then(v as Starting<T>));

  @override
  Starting<T> get _value => super._value as Starting<T>;

  @override
  $Res call({
    Object? videoInfo = freezed,
  }) {
    return _then(Starting<T>(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo<T>,
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

class _$Starting<T> implements Starting<T> {
  const _$Starting(this.videoInfo);

  @override
  final VideoInfo<T> videoInfo;

  @override
  String toString() {
    return 'ViewState<$T>.starting(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Starting<T> &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @JsonKey(ignore: true)
  @override
  $StartingCopyWith<T, Starting<T>> get copyWith =>
      _$StartingCopyWithImpl<T, Starting<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) {
    return starting(videoInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting(videoInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) {
    return starting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) {
    if (starting != null) {
      return starting(this);
    }
    return orElse();
  }
}

abstract class Starting<T> implements ViewState<T> {
  const factory Starting(VideoInfo<T> videoInfo) = _$Starting<T>;

  VideoInfo<T> get videoInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartingCopyWith<T, Starting<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadingCopyWith<T, $Res> {
  factory $DownloadingCopyWith(
          Downloading<T> value, $Res Function(Downloading<T>) then) =
      _$DownloadingCopyWithImpl<T, $Res>;
  $Res call({VideoInfo<T> videoInfo, DownloadInfo downloadInfo});

  $VideoInfoCopyWith<T, $Res> get videoInfo;
  $DownloadInfoCopyWith<$Res> get downloadInfo;
}

/// @nodoc
class _$DownloadingCopyWithImpl<T, $Res>
    extends _$ViewStateCopyWithImpl<T, $Res>
    implements $DownloadingCopyWith<T, $Res> {
  _$DownloadingCopyWithImpl(
      Downloading<T> _value, $Res Function(Downloading<T>) _then)
      : super(_value, (v) => _then(v as Downloading<T>));

  @override
  Downloading<T> get _value => super._value as Downloading<T>;

  @override
  $Res call({
    Object? videoInfo = freezed,
    Object? downloadInfo = freezed,
  }) {
    return _then(Downloading<T>(
      videoInfo == freezed
          ? _value.videoInfo
          : videoInfo // ignore: cast_nullable_to_non_nullable
              as VideoInfo<T>,
      downloadInfo == freezed
          ? _value.downloadInfo
          : downloadInfo // ignore: cast_nullable_to_non_nullable
              as DownloadInfo,
    ));
  }

  @override
  $VideoInfoCopyWith<T, $Res> get videoInfo {
    return $VideoInfoCopyWith<T, $Res>(_value.videoInfo, (value) {
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

class _$Downloading<T> implements Downloading<T> {
  const _$Downloading(this.videoInfo, this.downloadInfo);

  @override
  final VideoInfo<T> videoInfo;
  @override
  final DownloadInfo downloadInfo;

  @override
  String toString() {
    return 'ViewState<$T>.downloading(videoInfo: $videoInfo, downloadInfo: $downloadInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Downloading<T> &&
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
  $DownloadingCopyWith<T, Downloading<T>> get copyWith =>
      _$DownloadingCopyWithImpl<T, Downloading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(VideoInfo<T> videoInfo) data,
    required TResult Function(VideoInfo<T> videoInfo) starting,
    required TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)
        downloading,
  }) {
    return downloading(videoInfo, downloadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(VideoInfo<T> videoInfo)? data,
    TResult Function(VideoInfo<T> videoInfo)? starting,
    TResult Function(VideoInfo<T> videoInfo, DownloadInfo downloadInfo)?
        downloading,
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
    TResult Function(Initial<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Data<T> value) data,
    required TResult Function(Starting<T> value) starting,
    required TResult Function(Downloading<T> value) downloading,
  }) {
    return downloading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Initial<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(Data<T> value)? data,
    TResult Function(Starting<T> value)? starting,
    TResult Function(Downloading<T> value)? downloading,
    required TResult orElse(),
  }) {
    if (downloading != null) {
      return downloading(this);
    }
    return orElse();
  }
}

abstract class Downloading<T> implements ViewState<T> {
  const factory Downloading(VideoInfo<T> videoInfo, DownloadInfo downloadInfo) =
      _$Downloading<T>;

  VideoInfo<T> get videoInfo => throw _privateConstructorUsedError;
  DownloadInfo get downloadInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadingCopyWith<T, Downloading<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
