import 'package:get/get.dart';
import 'package:estados/models/usuario.dart';

class UsuarioController extends GetxController {
  //este valor bool, lo puedo tranformar en un observable.....
  //son como string....
  //bool existeUsuario = false; de tipo var o RxBool
  //Rx : objeto reactivo
  var existeUsuario = false.obs;
  var usuario = Usuario().obs;

  //creo un controlador, cargar usuario
  void cargarUsuario(Usuario pUsuario) {
    existeUsuario.value = true;
    usuario.value = pUsuario;
  }

  //
}
