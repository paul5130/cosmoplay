// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String thumbnailUrl) initializing,
    required TResult Function() initialized,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String thumbnailUrl)? initializing,
    TResult? Function()? initialized,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String thumbnailUrl)? initializing,
    TResult Function()? initialized,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateIdle value) idle,
    required TResult Function(VideoPlayerStateInitializing value) initializing,
    required TResult Function(VideoPlayerStateInitialized value) initialized,
    required TResult Function(VideoPlayerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateIdle value)? idle,
    TResult? Function(VideoPlayerStateInitializing value)? initializing,
    TResult? Function(VideoPlayerStateInitialized value)? initialized,
    TResult? Function(VideoPlayerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateIdle value)? idle,
    TResult Function(VideoPlayerStateInitializing value)? initializing,
    TResult Function(VideoPlayerStateInitialized value)? initialized,
    TResult Function(VideoPlayerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VideoPlayerStateIdleImplCopyWith<$Res> {
  factory _$$VideoPlayerStateIdleImplCopyWith(_$VideoPlayerStateIdleImpl value,
          $Res Function(_$VideoPlayerStateIdleImpl) then) =
      __$$VideoPlayerStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerStateIdleImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateIdleImpl>
    implements _$$VideoPlayerStateIdleImplCopyWith<$Res> {
  __$$VideoPlayerStateIdleImplCopyWithImpl(_$VideoPlayerStateIdleImpl _value,
      $Res Function(_$VideoPlayerStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoPlayerStateIdleImpl extends VideoPlayerStateIdle
    with DiagnosticableTreeMixin {
  const _$VideoPlayerStateIdleImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'VideoPlayerState.idle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String thumbnailUrl) initializing,
    required TResult Function() initialized,
    required TResult Function(String? error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String thumbnailUrl)? initializing,
    TResult? Function()? initialized,
    TResult? Function(String? error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String thumbnailUrl)? initializing,
    TResult Function()? initialized,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateIdle value) idle,
    required TResult Function(VideoPlayerStateInitializing value) initializing,
    required TResult Function(VideoPlayerStateInitialized value) initialized,
    required TResult Function(VideoPlayerStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateIdle value)? idle,
    TResult? Function(VideoPlayerStateInitializing value)? initializing,
    TResult? Function(VideoPlayerStateInitialized value)? initialized,
    TResult? Function(VideoPlayerStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateIdle value)? idle,
    TResult Function(VideoPlayerStateInitializing value)? initializing,
    TResult Function(VideoPlayerStateInitialized value)? initialized,
    TResult Function(VideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateIdle extends VideoPlayerState {
  const factory VideoPlayerStateIdle() = _$VideoPlayerStateIdleImpl;
  const VideoPlayerStateIdle._() : super._();
}

/// @nodoc
abstract class _$$VideoPlayerStateInitializingImplCopyWith<$Res> {
  factory _$$VideoPlayerStateInitializingImplCopyWith(
          _$VideoPlayerStateInitializingImpl value,
          $Res Function(_$VideoPlayerStateInitializingImpl) then) =
      __$$VideoPlayerStateInitializingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String thumbnailUrl});
}

/// @nodoc
class __$$VideoPlayerStateInitializingImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res,
        _$VideoPlayerStateInitializingImpl>
    implements _$$VideoPlayerStateInitializingImplCopyWith<$Res> {
  __$$VideoPlayerStateInitializingImplCopyWithImpl(
      _$VideoPlayerStateInitializingImpl _value,
      $Res Function(_$VideoPlayerStateInitializingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumbnailUrl = null,
  }) {
    return _then(_$VideoPlayerStateInitializingImpl(
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateInitializingImpl extends VideoPlayerStateInitializing
    with DiagnosticableTreeMixin {
  const _$VideoPlayerStateInitializingImpl({required this.thumbnailUrl})
      : super._();

  @override
  final String thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState.initializing(thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoPlayerState.initializing'))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateInitializingImpl &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbnailUrl);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateInitializingImplCopyWith<
          _$VideoPlayerStateInitializingImpl>
      get copyWith => __$$VideoPlayerStateInitializingImplCopyWithImpl<
          _$VideoPlayerStateInitializingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String thumbnailUrl) initializing,
    required TResult Function() initialized,
    required TResult Function(String? error) error,
  }) {
    return initializing(thumbnailUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String thumbnailUrl)? initializing,
    TResult? Function()? initialized,
    TResult? Function(String? error)? error,
  }) {
    return initializing?.call(thumbnailUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String thumbnailUrl)? initializing,
    TResult Function()? initialized,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(thumbnailUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateIdle value) idle,
    required TResult Function(VideoPlayerStateInitializing value) initializing,
    required TResult Function(VideoPlayerStateInitialized value) initialized,
    required TResult Function(VideoPlayerStateError value) error,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateIdle value)? idle,
    TResult? Function(VideoPlayerStateInitializing value)? initializing,
    TResult? Function(VideoPlayerStateInitialized value)? initialized,
    TResult? Function(VideoPlayerStateError value)? error,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateIdle value)? idle,
    TResult Function(VideoPlayerStateInitializing value)? initializing,
    TResult Function(VideoPlayerStateInitialized value)? initialized,
    TResult Function(VideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateInitializing extends VideoPlayerState {
  const factory VideoPlayerStateInitializing(
          {required final String thumbnailUrl}) =
      _$VideoPlayerStateInitializingImpl;
  const VideoPlayerStateInitializing._() : super._();

  String get thumbnailUrl;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPlayerStateInitializingImplCopyWith<
          _$VideoPlayerStateInitializingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerStateInitializedImplCopyWith<$Res> {
  factory _$$VideoPlayerStateInitializedImplCopyWith(
          _$VideoPlayerStateInitializedImpl value,
          $Res Function(_$VideoPlayerStateInitializedImpl) then) =
      __$$VideoPlayerStateInitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerStateInitializedImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res,
        _$VideoPlayerStateInitializedImpl>
    implements _$$VideoPlayerStateInitializedImplCopyWith<$Res> {
  __$$VideoPlayerStateInitializedImplCopyWithImpl(
      _$VideoPlayerStateInitializedImpl _value,
      $Res Function(_$VideoPlayerStateInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoPlayerStateInitializedImpl extends VideoPlayerStateInitialized
    with DiagnosticableTreeMixin {
  const _$VideoPlayerStateInitializedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState.initialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoPlayerState.initialized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateInitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String thumbnailUrl) initializing,
    required TResult Function() initialized,
    required TResult Function(String? error) error,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String thumbnailUrl)? initializing,
    TResult? Function()? initialized,
    TResult? Function(String? error)? error,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String thumbnailUrl)? initializing,
    TResult Function()? initialized,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateIdle value) idle,
    required TResult Function(VideoPlayerStateInitializing value) initializing,
    required TResult Function(VideoPlayerStateInitialized value) initialized,
    required TResult Function(VideoPlayerStateError value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateIdle value)? idle,
    TResult? Function(VideoPlayerStateInitializing value)? initializing,
    TResult? Function(VideoPlayerStateInitialized value)? initialized,
    TResult? Function(VideoPlayerStateError value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateIdle value)? idle,
    TResult Function(VideoPlayerStateInitializing value)? initializing,
    TResult Function(VideoPlayerStateInitialized value)? initialized,
    TResult Function(VideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateInitialized extends VideoPlayerState {
  const factory VideoPlayerStateInitialized() =
      _$VideoPlayerStateInitializedImpl;
  const VideoPlayerStateInitialized._() : super._();
}

/// @nodoc
abstract class _$$VideoPlayerStateErrorImplCopyWith<$Res> {
  factory _$$VideoPlayerStateErrorImplCopyWith(
          _$VideoPlayerStateErrorImpl value,
          $Res Function(_$VideoPlayerStateErrorImpl) then) =
      __$$VideoPlayerStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$VideoPlayerStateErrorImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateErrorImpl>
    implements _$$VideoPlayerStateErrorImplCopyWith<$Res> {
  __$$VideoPlayerStateErrorImplCopyWithImpl(_$VideoPlayerStateErrorImpl _value,
      $Res Function(_$VideoPlayerStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$VideoPlayerStateErrorImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateErrorImpl extends VideoPlayerStateError
    with DiagnosticableTreeMixin {
  const _$VideoPlayerStateErrorImpl({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'VideoPlayerState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'VideoPlayerState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateErrorImplCopyWith<_$VideoPlayerStateErrorImpl>
      get copyWith => __$$VideoPlayerStateErrorImplCopyWithImpl<
          _$VideoPlayerStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String thumbnailUrl) initializing,
    required TResult Function() initialized,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String thumbnailUrl)? initializing,
    TResult? Function()? initialized,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String thumbnailUrl)? initializing,
    TResult Function()? initialized,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerStateIdle value) idle,
    required TResult Function(VideoPlayerStateInitializing value) initializing,
    required TResult Function(VideoPlayerStateInitialized value) initialized,
    required TResult Function(VideoPlayerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerStateIdle value)? idle,
    TResult? Function(VideoPlayerStateInitializing value)? initializing,
    TResult? Function(VideoPlayerStateInitialized value)? initialized,
    TResult? Function(VideoPlayerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerStateIdle value)? idle,
    TResult Function(VideoPlayerStateInitializing value)? initializing,
    TResult Function(VideoPlayerStateInitialized value)? initialized,
    TResult Function(VideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerStateError extends VideoPlayerState {
  const factory VideoPlayerStateError({final String? error}) =
      _$VideoPlayerStateErrorImpl;
  const VideoPlayerStateError._() : super._();

  String? get error;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPlayerStateErrorImplCopyWith<_$VideoPlayerStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
