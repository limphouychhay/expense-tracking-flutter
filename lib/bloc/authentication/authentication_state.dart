part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unauthenticated() = Unauthenticated;
  const factory AuthenticationState.authenticateInProgress() = AuthenticateInProgress;
  const factory AuthenticationState.authenticated({required ProfileModel profileModel}) = Authenticated;
  const factory AuthenticationState.authenticateFailed() = AuthenticateFailed;
}
