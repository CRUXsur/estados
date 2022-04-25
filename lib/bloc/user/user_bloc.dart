//flutter bloc, va atener una parte que corresponde al user_event
//y tb del user_state, los trabajo los 3 archivos como si fueran
//uno solo

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart'; //mas ligero que material!
import 'package:estados/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

//necesita que le diga: los tipos de Eventos que puede manejar y
//los tipos de estado ...Bloc<Event, State>......
class UserBloc extends Bloc<UserEvent, UserState> {
  //crtl . (UserBloc) y me crea mi estado inicial de mi bloc
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) {
      // TODO: implement event handler
    });
  }
  //
}
