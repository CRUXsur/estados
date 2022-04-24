import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  //constructor
  UsuarioCubit() : super(UsuarioInitial());
  //UsuarioCubit(initialState) : super(initialState);
  //
}
