part of 'usuario_cubit.dart';

@immutable //no quiero que cambie
abstract class UsuarioState {
  //
}

class UsuarioInitial extends UsuarioState {
  //exstoy en el estado inicial entonces no hay usuario
  final existeUsuario = false;

  //sobreescribo para ver como quiero que luzca en la consola
  @override
  String toString() {
    return 'UsuarioInicial: existeUsuario: false';
  }
}
