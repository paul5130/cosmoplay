// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_video_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnlineVideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineVideoPlayerStateCopyWith<$Res> {
  factory $OnlineVideoPlayerStateCopyWith(OnlineVideoPlayerState value,
          $Res Function(OnlineVideoPlayerState) then) =
      _$OnlineVideoPlayerStateCopyWithImpl<$Res, OnlineVideoPlayerState>;
}

/// @nodoc
class _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        $Val extends OnlineVideoPlayerState>
    implements $OnlineVideoPlayerStateCopyWith<$Res> {
  _$OnlineVideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateIdleImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateIdleImplCopyWith(
          _$OnlineVideoPlayerStateIdleImpl value,
          $Res Function(_$OnlineVideoPlayerStateIdleImpl) then) =
      __$$OnlineVideoPlayerStateIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnlineVideoPlayerStateIdleImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateIdleImpl>
    implements _$$OnlineVideoPlayerStateIdleImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateIdleImplCopyWithImpl(
      _$OnlineVideoPlayerStateIdleImpl _value,
      $Res Function(_$OnlineVideoPlayerStateIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnlineVideoPlayerStateIdleImpl extends OnlineVideoPlayerStateIdle
    with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateIdleImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.idle'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
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
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateIdle extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateIdle() = _$OnlineVideoPlayerStateIdleImpl;
  const OnlineVideoPlayerStateIdle._() : super._();
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateInitialImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateInitialImplCopyWith(
          _$OnlineVideoPlayerStateInitialImpl value,
          $Res Function(_$OnlineVideoPlayerStateInitialImpl) then) =
      __$$OnlineVideoPlayerStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoUrl, String thumbnailUrl});
}

/// @nodoc
class __$$OnlineVideoPlayerStateInitialImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateInitialImpl>
    implements _$$OnlineVideoPlayerStateInitialImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateInitialImplCopyWithImpl(
      _$OnlineVideoPlayerStateInitialImpl _value,
      $Res Function(_$OnlineVideoPlayerStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$OnlineVideoPlayerStateInitialImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStateInitialImpl extends OnlineVideoPlayerStateInitial
    with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateInitialImpl(
      {required this.videoUrl, required this.thumbnailUrl})
      : super._();

  @override
  final String videoUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.initial(videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.initial'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateInitialImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, thumbnailUrl);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStateInitialImplCopyWith<
          _$OnlineVideoPlayerStateInitialImpl>
      get copyWith => __$$OnlineVideoPlayerStateInitialImplCopyWithImpl<
          _$OnlineVideoPlayerStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return initial(videoUrl, thumbnailUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return initial?.call(videoUrl, thumbnailUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(videoUrl, thumbnailUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateInitial extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateInitial(
          {required final String videoUrl,
          required final String thumbnailUrl}) =
      _$OnlineVideoPlayerStateInitialImpl;
  const OnlineVideoPlayerStateInitial._() : super._();

  String get videoUrl;
  String get thumbnailUrl;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStateInitialImplCopyWith<
          _$OnlineVideoPlayerStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateInitializedImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateInitializedImplCopyWith(
          _$OnlineVideoPlayerStateInitializedImpl value,
          $Res Function(_$OnlineVideoPlayerStateInitializedImpl) then) =
      __$$OnlineVideoPlayerStateInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri videoUrl, String thumbnailUrl, Duration length});
}

/// @nodoc
class __$$OnlineVideoPlayerStateInitializedImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateInitializedImpl>
    implements _$$OnlineVideoPlayerStateInitializedImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateInitializedImplCopyWithImpl(
      _$OnlineVideoPlayerStateInitializedImpl _value,
      $Res Function(_$OnlineVideoPlayerStateInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? thumbnailUrl = null,
    Object? length = null,
  }) {
    return _then(_$OnlineVideoPlayerStateInitializedImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStateInitializedImpl
    extends OnlineVideoPlayerStateInitialized with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateInitializedImpl(
      {required this.videoUrl,
      required this.thumbnailUrl,
      required this.length})
      : super._();

  @override
  final Uri videoUrl;
  @override
  final String thumbnailUrl;
  @override
  final Duration length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.initialized(videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.initialized'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateInitializedImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, thumbnailUrl, length);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStateInitializedImplCopyWith<
          _$OnlineVideoPlayerStateInitializedImpl>
      get copyWith => __$$OnlineVideoPlayerStateInitializedImplCopyWithImpl<
          _$OnlineVideoPlayerStateInitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return initialized(videoUrl, thumbnailUrl, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return initialized?.call(videoUrl, thumbnailUrl, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(videoUrl, thumbnailUrl, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateInitialized
    extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateInitialized(
          {required final Uri videoUrl,
          required final String thumbnailUrl,
          required final Duration length}) =
      _$OnlineVideoPlayerStateInitializedImpl;
  const OnlineVideoPlayerStateInitialized._() : super._();

  Uri get videoUrl;
  String get thumbnailUrl;
  Duration get length;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStateInitializedImplCopyWith<
          _$OnlineVideoPlayerStateInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStatePlayingImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStatePlayingImplCopyWith(
          _$OnlineVideoPlayerStatePlayingImpl value,
          $Res Function(_$OnlineVideoPlayerStatePlayingImpl) then) =
      __$$OnlineVideoPlayerStatePlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri videoUrl, Duration currentPosition});
}

/// @nodoc
class __$$OnlineVideoPlayerStatePlayingImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStatePlayingImpl>
    implements _$$OnlineVideoPlayerStatePlayingImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStatePlayingImplCopyWithImpl(
      _$OnlineVideoPlayerStatePlayingImpl _value,
      $Res Function(_$OnlineVideoPlayerStatePlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? currentPosition = null,
  }) {
    return _then(_$OnlineVideoPlayerStatePlayingImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStatePlayingImpl extends OnlineVideoPlayerStatePlaying
    with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStatePlayingImpl(
      {required this.videoUrl, required this.currentPosition})
      : super._();

  @override
  final Uri videoUrl;
  @override
  final Duration currentPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.playing(videoUrl: $videoUrl, currentPosition: $currentPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.playing'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('currentPosition', currentPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStatePlayingImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, currentPosition);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStatePlayingImplCopyWith<
          _$OnlineVideoPlayerStatePlayingImpl>
      get copyWith => __$$OnlineVideoPlayerStatePlayingImplCopyWithImpl<
          _$OnlineVideoPlayerStatePlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return playing(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return playing?.call(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(videoUrl, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStatePlaying extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStatePlaying(
          {required final Uri videoUrl,
          required final Duration currentPosition}) =
      _$OnlineVideoPlayerStatePlayingImpl;
  const OnlineVideoPlayerStatePlaying._() : super._();

  Uri get videoUrl;
  Duration get currentPosition;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStatePlayingImplCopyWith<
          _$OnlineVideoPlayerStatePlayingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStatePausedImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStatePausedImplCopyWith(
          _$OnlineVideoPlayerStatePausedImpl value,
          $Res Function(_$OnlineVideoPlayerStatePausedImpl) then) =
      __$$OnlineVideoPlayerStatePausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri videoUrl, Duration currentPosition});
}

/// @nodoc
class __$$OnlineVideoPlayerStatePausedImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStatePausedImpl>
    implements _$$OnlineVideoPlayerStatePausedImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStatePausedImplCopyWithImpl(
      _$OnlineVideoPlayerStatePausedImpl _value,
      $Res Function(_$OnlineVideoPlayerStatePausedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? currentPosition = null,
  }) {
    return _then(_$OnlineVideoPlayerStatePausedImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStatePausedImpl extends OnlineVideoPlayerStatePaused
    with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStatePausedImpl(
      {required this.videoUrl, required this.currentPosition})
      : super._();

  @override
  final Uri videoUrl;
  @override
  final Duration currentPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.paused(videoUrl: $videoUrl, currentPosition: $currentPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.paused'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('currentPosition', currentPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStatePausedImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, currentPosition);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStatePausedImplCopyWith<
          _$OnlineVideoPlayerStatePausedImpl>
      get copyWith => __$$OnlineVideoPlayerStatePausedImplCopyWithImpl<
          _$OnlineVideoPlayerStatePausedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return paused(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return paused?.call(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(videoUrl, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStatePaused extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStatePaused(
          {required final Uri videoUrl,
          required final Duration currentPosition}) =
      _$OnlineVideoPlayerStatePausedImpl;
  const OnlineVideoPlayerStatePaused._() : super._();

  Uri get videoUrl;
  Duration get currentPosition;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStatePausedImplCopyWith<
          _$OnlineVideoPlayerStatePausedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateBufferingImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateBufferingImplCopyWith(
          _$OnlineVideoPlayerStateBufferingImpl value,
          $Res Function(_$OnlineVideoPlayerStateBufferingImpl) then) =
      __$$OnlineVideoPlayerStateBufferingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri videoUrl, Duration currentPosition});
}

/// @nodoc
class __$$OnlineVideoPlayerStateBufferingImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateBufferingImpl>
    implements _$$OnlineVideoPlayerStateBufferingImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateBufferingImplCopyWithImpl(
      _$OnlineVideoPlayerStateBufferingImpl _value,
      $Res Function(_$OnlineVideoPlayerStateBufferingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? currentPosition = null,
  }) {
    return _then(_$OnlineVideoPlayerStateBufferingImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      currentPosition: null == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStateBufferingImpl
    extends OnlineVideoPlayerStateBuffering with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateBufferingImpl(
      {required this.videoUrl, required this.currentPosition})
      : super._();

  @override
  final Uri videoUrl;
  @override
  final Duration currentPosition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.buffering(videoUrl: $videoUrl, currentPosition: $currentPosition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.buffering'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('currentPosition', currentPosition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateBufferingImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, currentPosition);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStateBufferingImplCopyWith<
          _$OnlineVideoPlayerStateBufferingImpl>
      get copyWith => __$$OnlineVideoPlayerStateBufferingImplCopyWithImpl<
          _$OnlineVideoPlayerStateBufferingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return buffering(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return buffering?.call(videoUrl, currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(videoUrl, currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return buffering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return buffering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateBuffering extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateBuffering(
          {required final Uri videoUrl,
          required final Duration currentPosition}) =
      _$OnlineVideoPlayerStateBufferingImpl;
  const OnlineVideoPlayerStateBuffering._() : super._();

  Uri get videoUrl;
  Duration get currentPosition;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStateBufferingImplCopyWith<
          _$OnlineVideoPlayerStateBufferingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateCompletedImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateCompletedImplCopyWith(
          _$OnlineVideoPlayerStateCompletedImpl value,
          $Res Function(_$OnlineVideoPlayerStateCompletedImpl) then) =
      __$$OnlineVideoPlayerStateCompletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri videoUrl});
}

/// @nodoc
class __$$OnlineVideoPlayerStateCompletedImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateCompletedImpl>
    implements _$$OnlineVideoPlayerStateCompletedImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateCompletedImplCopyWithImpl(
      _$OnlineVideoPlayerStateCompletedImpl _value,
      $Res Function(_$OnlineVideoPlayerStateCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
  }) {
    return _then(_$OnlineVideoPlayerStateCompletedImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStateCompletedImpl
    extends OnlineVideoPlayerStateCompleted with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateCompletedImpl({required this.videoUrl})
      : super._();

  @override
  final Uri videoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.completed(videoUrl: $videoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.completed'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateCompletedImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStateCompletedImplCopyWith<
          _$OnlineVideoPlayerStateCompletedImpl>
      get copyWith => __$$OnlineVideoPlayerStateCompletedImplCopyWithImpl<
          _$OnlineVideoPlayerStateCompletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return completed(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return completed?.call(videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateCompleted extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateCompleted({required final Uri videoUrl}) =
      _$OnlineVideoPlayerStateCompletedImpl;
  const OnlineVideoPlayerStateCompleted._() : super._();

  Uri get videoUrl;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStateCompletedImplCopyWith<
          _$OnlineVideoPlayerStateCompletedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnlineVideoPlayerStateErrorImplCopyWith<$Res> {
  factory _$$OnlineVideoPlayerStateErrorImplCopyWith(
          _$OnlineVideoPlayerStateErrorImpl value,
          $Res Function(_$OnlineVideoPlayerStateErrorImpl) then) =
      __$$OnlineVideoPlayerStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoUrl, String thumbnailUrl, String? error});
}

/// @nodoc
class __$$OnlineVideoPlayerStateErrorImplCopyWithImpl<$Res>
    extends _$OnlineVideoPlayerStateCopyWithImpl<$Res,
        _$OnlineVideoPlayerStateErrorImpl>
    implements _$$OnlineVideoPlayerStateErrorImplCopyWith<$Res> {
  __$$OnlineVideoPlayerStateErrorImplCopyWithImpl(
      _$OnlineVideoPlayerStateErrorImpl _value,
      $Res Function(_$OnlineVideoPlayerStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoUrl = null,
    Object? thumbnailUrl = null,
    Object? error = freezed,
  }) {
    return _then(_$OnlineVideoPlayerStateErrorImpl(
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnlineVideoPlayerStateErrorImpl extends OnlineVideoPlayerStateError
    with DiagnosticableTreeMixin {
  const _$OnlineVideoPlayerStateErrorImpl(
      {required this.videoUrl, required this.thumbnailUrl, this.error})
      : super._();

  @override
  final String videoUrl;
  @override
  final String thumbnailUrl;
  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlineVideoPlayerState.error(videoUrl: $videoUrl, thumbnailUrl: $thumbnailUrl, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlineVideoPlayerState.error'))
      ..add(DiagnosticsProperty('videoUrl', videoUrl))
      ..add(DiagnosticsProperty('thumbnailUrl', thumbnailUrl))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineVideoPlayerStateErrorImpl &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoUrl, thumbnailUrl, error);

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineVideoPlayerStateErrorImplCopyWith<_$OnlineVideoPlayerStateErrorImpl>
      get copyWith => __$$OnlineVideoPlayerStateErrorImplCopyWithImpl<
          _$OnlineVideoPlayerStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String videoUrl, String thumbnailUrl) initial,
    required TResult Function(
            Uri videoUrl, String thumbnailUrl, Duration length)
        initialized,
    required TResult Function(Uri videoUrl, Duration currentPosition) playing,
    required TResult Function(Uri videoUrl, Duration currentPosition) paused,
    required TResult Function(Uri videoUrl, Duration currentPosition) buffering,
    required TResult Function(Uri videoUrl) completed,
    required TResult Function(
            String videoUrl, String thumbnailUrl, String? error)
        error,
  }) {
    return error(videoUrl, thumbnailUrl, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String videoUrl, String thumbnailUrl)? initial,
    TResult? Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult? Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult? Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult? Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult? Function(Uri videoUrl)? completed,
    TResult? Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
  }) {
    return error?.call(videoUrl, thumbnailUrl, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String videoUrl, String thumbnailUrl)? initial,
    TResult Function(Uri videoUrl, String thumbnailUrl, Duration length)?
        initialized,
    TResult Function(Uri videoUrl, Duration currentPosition)? playing,
    TResult Function(Uri videoUrl, Duration currentPosition)? paused,
    TResult Function(Uri videoUrl, Duration currentPosition)? buffering,
    TResult Function(Uri videoUrl)? completed,
    TResult Function(String videoUrl, String thumbnailUrl, String? error)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(videoUrl, thumbnailUrl, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineVideoPlayerStateIdle value) idle,
    required TResult Function(OnlineVideoPlayerStateInitial value) initial,
    required TResult Function(OnlineVideoPlayerStateInitialized value)
        initialized,
    required TResult Function(OnlineVideoPlayerStatePlaying value) playing,
    required TResult Function(OnlineVideoPlayerStatePaused value) paused,
    required TResult Function(OnlineVideoPlayerStateBuffering value) buffering,
    required TResult Function(OnlineVideoPlayerStateCompleted value) completed,
    required TResult Function(OnlineVideoPlayerStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult? Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult? Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult? Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult? Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult? Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult? Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult? Function(OnlineVideoPlayerStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineVideoPlayerStateIdle value)? idle,
    TResult Function(OnlineVideoPlayerStateInitial value)? initial,
    TResult Function(OnlineVideoPlayerStateInitialized value)? initialized,
    TResult Function(OnlineVideoPlayerStatePlaying value)? playing,
    TResult Function(OnlineVideoPlayerStatePaused value)? paused,
    TResult Function(OnlineVideoPlayerStateBuffering value)? buffering,
    TResult Function(OnlineVideoPlayerStateCompleted value)? completed,
    TResult Function(OnlineVideoPlayerStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OnlineVideoPlayerStateError extends OnlineVideoPlayerState {
  const factory OnlineVideoPlayerStateError(
      {required final String videoUrl,
      required final String thumbnailUrl,
      final String? error}) = _$OnlineVideoPlayerStateErrorImpl;
  const OnlineVideoPlayerStateError._() : super._();

  String get videoUrl;
  String get thumbnailUrl;
  String? get error;

  /// Create a copy of OnlineVideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlineVideoPlayerStateErrorImplCopyWith<_$OnlineVideoPlayerStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
