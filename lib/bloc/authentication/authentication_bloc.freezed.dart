// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_AutoLogin value) autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, (v) => _then(v as _$_Login));

  @override
  _$_Login get _value => super._value as _$_Login;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_Login(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() autoLogin,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthenticationEvent {
  const factory _Login(
      {required final String username,
      required final String password}) = _$_Login;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AutoLoginCopyWith<$Res> {
  factory _$$_AutoLoginCopyWith(
          _$_AutoLogin value, $Res Function(_$_AutoLogin) then) =
      __$$_AutoLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AutoLoginCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_AutoLoginCopyWith<$Res> {
  __$$_AutoLoginCopyWithImpl(
      _$_AutoLogin _value, $Res Function(_$_AutoLogin) _then)
      : super(_value, (v) => _then(v as _$_AutoLogin));

  @override
  _$_AutoLogin get _value => super._value as _$_AutoLogin;
}

/// @nodoc

class _$_AutoLogin implements _AutoLogin {
  const _$_AutoLogin();

  @override
  String toString() {
    return 'AuthenticationEvent.autoLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AutoLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() autoLogin,
  }) {
    return autoLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
  }) {
    return autoLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_AutoLogin value) autoLogin,
  }) {
    return autoLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
  }) {
    return autoLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_AutoLogin value)? autoLogin,
    required TResult orElse(),
  }) {
    if (autoLogin != null) {
      return autoLogin(this);
    }
    return orElse();
  }
}

abstract class _AutoLogin implements AuthenticationEvent {
  const factory _AutoLogin() = _$_AutoLogin;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticateInProgress,
    required TResult Function(ProfileModel profileModel) authenticated,
    required TResult Function() authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticateInProgress value)
        authenticateInProgress,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticateFailed value) authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticateInProgress,
    required TResult Function(ProfileModel profileModel) authenticated,
    required TResult Function() authenticateFailed,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticateInProgress value)
        authenticateInProgress,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticateFailed value) authenticateFailed,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthenticationState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$AuthenticateInProgressCopyWith<$Res> {
  factory _$$AuthenticateInProgressCopyWith(_$AuthenticateInProgress value,
          $Res Function(_$AuthenticateInProgress) then) =
      __$$AuthenticateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateInProgressCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$AuthenticateInProgressCopyWith<$Res> {
  __$$AuthenticateInProgressCopyWithImpl(_$AuthenticateInProgress _value,
      $Res Function(_$AuthenticateInProgress) _then)
      : super(_value, (v) => _then(v as _$AuthenticateInProgress));

  @override
  _$AuthenticateInProgress get _value =>
      super._value as _$AuthenticateInProgress;
}

/// @nodoc

class _$AuthenticateInProgress implements AuthenticateInProgress {
  const _$AuthenticateInProgress();

  @override
  String toString() {
    return 'AuthenticationState.authenticateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticateInProgress,
    required TResult Function(ProfileModel profileModel) authenticated,
    required TResult Function() authenticateFailed,
  }) {
    return authenticateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
  }) {
    return authenticateInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateInProgress != null) {
      return authenticateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticateInProgress value)
        authenticateInProgress,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticateFailed value) authenticateFailed,
  }) {
    return authenticateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
  }) {
    return authenticateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateInProgress != null) {
      return authenticateInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthenticateInProgress implements AuthenticationState {
  const factory AuthenticateInProgress() = _$AuthenticateInProgress;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  $Res call({ProfileModel profileModel});

  $ProfileModelCopyWith<$Res> get profileModel;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, (v) => _then(v as _$Authenticated));

  @override
  _$Authenticated get _value => super._value as _$Authenticated;

  @override
  $Res call({
    Object? profileModel = freezed,
  }) {
    return _then(_$Authenticated(
      profileModel: profileModel == freezed
          ? _value.profileModel
          : profileModel // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
    ));
  }

  @override
  $ProfileModelCopyWith<$Res> get profileModel {
    return $ProfileModelCopyWith<$Res>(_value.profileModel, (value) {
      return _then(_value.copyWith(profileModel: value));
    });
  }
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated({required this.profileModel});

  @override
  final ProfileModel profileModel;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(profileModel: $profileModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            const DeepCollectionEquality()
                .equals(other.profileModel, profileModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profileModel));

  @JsonKey(ignore: true)
  @override
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticateInProgress,
    required TResult Function(ProfileModel profileModel) authenticated,
    required TResult Function() authenticateFailed,
  }) {
    return authenticated(profileModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
  }) {
    return authenticated?.call(profileModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(profileModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticateInProgress value)
        authenticateInProgress,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticateFailed value) authenticateFailed,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthenticationState {
  const factory Authenticated({required final ProfileModel profileModel}) =
      _$Authenticated;

  ProfileModel get profileModel;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticateFailedCopyWith<$Res> {
  factory _$$AuthenticateFailedCopyWith(_$AuthenticateFailed value,
          $Res Function(_$AuthenticateFailed) then) =
      __$$AuthenticateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateFailedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$AuthenticateFailedCopyWith<$Res> {
  __$$AuthenticateFailedCopyWithImpl(
      _$AuthenticateFailed _value, $Res Function(_$AuthenticateFailed) _then)
      : super(_value, (v) => _then(v as _$AuthenticateFailed));

  @override
  _$AuthenticateFailed get _value => super._value as _$AuthenticateFailed;
}

/// @nodoc

class _$AuthenticateFailed implements AuthenticateFailed {
  const _$AuthenticateFailed();

  @override
  String toString() {
    return 'AuthenticationState.authenticateFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() authenticateInProgress,
    required TResult Function(ProfileModel profileModel) authenticated,
    required TResult Function() authenticateFailed,
  }) {
    return authenticateFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
  }) {
    return authenticateFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? authenticateInProgress,
    TResult Function(ProfileModel profileModel)? authenticated,
    TResult Function()? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateFailed != null) {
      return authenticateFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthenticateInProgress value)
        authenticateInProgress,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(AuthenticateFailed value) authenticateFailed,
  }) {
    return authenticateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
  }) {
    return authenticateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthenticateInProgress value)? authenticateInProgress,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(AuthenticateFailed value)? authenticateFailed,
    required TResult orElse(),
  }) {
    if (authenticateFailed != null) {
      return authenticateFailed(this);
    }
    return orElse();
  }
}

abstract class AuthenticateFailed implements AuthenticationState {
  const factory AuthenticateFailed() = _$AuthenticateFailed;
}
