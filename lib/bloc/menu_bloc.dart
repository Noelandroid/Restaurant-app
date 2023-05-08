import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testpro/model.dart';
import 'package:testpro/repository.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(const MenuInitial()) {
    on<MenuEvent>((event, emit) async {
      emit(const MenuLoading());
      try {
        if (event is MenuFetchEvent) {
          var applicantsresponse = await Repository().getmenulist();

          emit(MenuLoaded(
            applicantsresponse,
          ));
        }
      } catch (e) {
        emit(MenuError(e.toString()));
      }
    });
  }
}
