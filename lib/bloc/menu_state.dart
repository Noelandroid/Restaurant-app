part of 'menu_bloc.dart';

abstract class MenuState extends Equatable {
  const MenuState();

  @override
  List<Object> get props => [];
}

class MenuInitial extends MenuState {
  const MenuInitial();

  @override
  List<Object> get props => [];
}

class MenuLoading extends MenuState {
  const MenuLoading();

  @override
  List<Object> get props => [];
}

class MenuLoaded extends MenuState {
  final List<Menulist> menulist;
  const MenuLoaded(this.menulist);

  @override
  List<Object> get props => [menulist];
}

class MenuError extends MenuState {
  final String essage;
  const MenuError(this.essage);

  @override
  List<Object> get props => [essage];
}
