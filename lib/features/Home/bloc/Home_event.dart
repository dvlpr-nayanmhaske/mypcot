part of 'Home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}
class TabSelected extends HomeEvent {
  final int index;
  const TabSelected(this.index);

  @override
  List<Object> get props => [index];
}

class AuthEvent extends HomeEvent{}