// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'download_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadInfoTearOff {
  const _$DownloadInfoTearOff();

  _DownloadInfo call(ProgressType type, int current, int total) {
    return _DownloadInfo(
      type,
      current,
      total,
    );
  }
}

/// @nodoc
const $DownloadInfo = _$DownloadInfoTearOff();

/// @nodoc
mixin _$DownloadInfo {
  ProgressType get type => throw _privateConstructorUsedError;
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadInfoCopyWith<DownloadInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadInfoCopyWith<$Res> {
  factory $DownloadInfoCopyWith(
          DownloadInfo value, $Res Function(DownloadInfo) then) =
      _$DownloadInfoCopyWithImpl<$Res>;
  $Res call({ProgressType type, int current, int total});
}

/// @nodoc
class _$DownloadInfoCopyWithImpl<$Res> implements $DownloadInfoCopyWith<$Res> {
  _$DownloadInfoCopyWithImpl(this._value, this._then);

  final DownloadInfo _value;
  // ignore: unused_field
  final $Res Function(DownloadInfo) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? current = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProgressType,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DownloadInfoCopyWith<$Res>
    implements $DownloadInfoCopyWith<$Res> {
  factory _$DownloadInfoCopyWith(
          _DownloadInfo value, $Res Function(_DownloadInfo) then) =
      __$DownloadInfoCopyWithImpl<$Res>;
  @override
  $Res call({ProgressType type, int current, int total});
}

/// @nodoc
class __$DownloadInfoCopyWithImpl<$Res> extends _$DownloadInfoCopyWithImpl<$Res>
    implements _$DownloadInfoCopyWith<$Res> {
  __$DownloadInfoCopyWithImpl(
      _DownloadInfo _value, $Res Function(_DownloadInfo) _then)
      : super(_value, (v) => _then(v as _DownloadInfo));

  @override
  _DownloadInfo get _value => super._value as _DownloadInfo;

  @override
  $Res call({
    Object? type = freezed,
    Object? current = freezed,
    Object? total = freezed,
  }) {
    return _then(_DownloadInfo(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProgressType,
      current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DownloadInfo implements _DownloadInfo {
  const _$_DownloadInfo(this.type, this.current, this.total);

  @override
  final ProgressType type;
  @override
  final int current;
  @override
  final int total;

  @override
  String toString() {
    return 'DownloadInfo(type: $type, current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DownloadInfo &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.current, current) ||
                const DeepCollectionEquality()
                    .equals(other.current, current)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(current) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$DownloadInfoCopyWith<_DownloadInfo> get copyWith =>
      __$DownloadInfoCopyWithImpl<_DownloadInfo>(this, _$identity);
}

abstract class _DownloadInfo implements DownloadInfo {
  const factory _DownloadInfo(ProgressType type, int current, int total) =
      _$_DownloadInfo;

  @override
  ProgressType get type => throw _privateConstructorUsedError;
  @override
  int get current => throw _privateConstructorUsedError;
  @override
  int get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadInfoCopyWith<_DownloadInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
