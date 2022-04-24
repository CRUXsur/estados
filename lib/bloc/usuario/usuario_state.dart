part of 'usuario_cubit.dart';

@immutable //no quiero que cambie
abstract class UsuarioState {
  //
}

class UsuarioInitial extends UsuarioState {
  //exstoy en el estado inicial entonces no hay usuario
  final existeUsuario = false;

  //sobreescribo para ver como quiero que luzca en la consola
  // @override
  // String toString() {
  //   return 'UsuarioInicial: existeUsuario: false';
  // }
}

//Nueva clase, que va a ser mi nuevo estado, Usuario activo o seleccionado
class UsuarioActivo extends UsuarioState {
  final existeUsuario = true; //tengo un usuario
  final Usuario usuario; //tengo la informacion aqui

  UsuarioActivo(this.usuario);
}
