import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:local_auth/local_auth.dart';

part 'Home_event.dart';
part 'Home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final LocalAuthentication _auth = LocalAuthentication();

  HomeBloc() : super(HomeInitial()) {
    on<TabSelected>(_ontabSelect);
    on<AuthEvent>(_onauthEvent);
  }

  _ontabSelect(TabSelected event, emit) {
    final selectedIndex = event.index;
    emit(NavigationState(selectedIndex));
  }

  _onauthEvent(AuthEvent event, Emitter<HomeState> emit) async {
    emit(AuthLoadingState());
    try {
      final bool canCheckBiometrics = await _auth.canCheckBiometrics;

      if (!canCheckBiometrics) {
        emit(AuthErrorState(error: "Biometric authentication not available"));
        return;
      }

      final bool authenticated = await _auth.authenticate(
        localizedReason: 'Please authenticate to access this section',
        options: const AuthenticationOptions(
          biometricOnly: false, // allow PIN/password fallback
          stickyAuth: true,
        ),
      );

      if (authenticated) {
        emit(AuthSuccessState());
      } else {
        emit(AuthErrorState(error: "Authentication failed or canceled"));
      }
    } catch (e) {
      print('Authentication error: $e');
      emit(AuthErrorState(error: e.toString()));
    }
  }
}
