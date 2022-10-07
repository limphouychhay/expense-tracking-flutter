// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/models/models.dart';
import 'package:expense_tracking/utils/utils.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    with HydratedMixin {
  AuthenticationBloc() : super(const AuthenticationState.unauthenticated()) {
    on<_AutoLogin>(_mapAutoLoginToState);
    on<_Login>(_mapLoginToState);
  }

  void _mapLoginToState(_Login event, Emitter<AuthenticationState> emit) async {
    try {
      LoadingModal.show();

      // final ProfileModel _response = await _loginRepository.post(
      //   payload: {'username': event.username, 'password': event.password},
      // );
      // emit(AuthenticationState.authenticated(profileModel: _response));

      await Future.delayed(const Duration(seconds: 1));

      emit(const AuthenticationState.authenticated(
          profileModel: ProfileModel()));

      LoadingModal.hide();

      GetIt.instance<AppRouter>().replace(const DashboardRouter());
    } on DioError catch (e) {
      final NetworkErrorHandler networkErrorHandler = NetworkErrorHandler(e);
      log('${networkErrorHandler.exec()?.description}');

      emit(const AuthenticationState.authenticateFailed());

      LoadingModal.hide();
    }
  }

  void _mapAutoLoginToState(
      _AutoLogin event, Emitter<AuthenticationState> emit) async {
    try {
      LoadingModal.show();

      // final ProfileModel profile = await _profileRepository.get();
      // emit(AuthenticationState.authenticated(profileModel: profile));

      await Future.delayed(const Duration(seconds: 1));

      LoadingModal.hide();

      GetIt.instance<AppRouter>().replace(const DashboardRouter());
    } on DioError catch (e) {
      final NetworkErrorHandler networkErrorHandler = NetworkErrorHandler(e);
      log('${networkErrorHandler.exec()?.description}');

      emit(const AuthenticationState.authenticateFailed());

      LoadingModal.hide();

      GetIt.instance<AppRouter>().replace(const AuthRouter());
    }
  }

  // if there are some value it will return authenticated state
  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    ProfileModel hydratedState =
        ProfileModel.fromJson(json['authenticationBloc']);
    return AuthenticationState.authenticated(profileModel: hydratedState);
  }

  // save this profile when the state is Authenticated only
  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    if (state is Authenticated) {
      return {'authenticationBloc': state.profileModel};
    }
    return null;
  }
}
