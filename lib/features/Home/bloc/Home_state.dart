part of 'Home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

class NavigationState extends HomeState {
  final int selectedIndex;

  const NavigationState(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}

class AuthStates extends HomeState {}

class AuthLoadingState extends AuthStates {}

class AuthSuccessState extends AuthStates {}

class AuthErrorState extends AuthStates {
  final String error;
  final DateTime _dateTime = DateTime.now();
  AuthErrorState({required this.error});
  @override
  List<Object> get props => [error, _dateTime];
}
