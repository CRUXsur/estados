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
      //implement event handler
      //print('ActivateUser called');
      //emito un nuevo estado!, para eso cree la clase
      //class UserSetState extends UserState {.......
      emit(UserSetState(event.user));
    });
    //or comprimido!
    //on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));

    //para la edad!!!!!
    on<ChangeUserAge>((event, emit) {
      //print('ChangeUserAge called');
      if (!state.existUser) return;
      //print('Se emitira un nuevo estado');
      //
      //emito un nuevo estado
      //state.user!.edad = event.age;//funciona , pero no me gusta hacer!!!
      //porque?, porque estoy mutando el estado
      //para evitar hacer esto , creo una copia de
      //nuestro modelo user.dart copyWith!!!!!
      //
      // emit(UserSetState(state.user!));
      //
      //de esta manera estamos creando una copia del estado
      //no estamos mutando el estado
      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });
  }
  //
}
