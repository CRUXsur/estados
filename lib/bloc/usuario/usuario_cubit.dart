import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  //constructor
  UsuarioCubit() : super(UsuarioInitial());
  //UsuarioCubit(initialState) : super(initialState);
  //
  void seleccionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }
}
