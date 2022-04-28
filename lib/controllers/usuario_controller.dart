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

  //me creo otro metodo para la edad,
  void cambiarEdad(int pEdad) {
    //Como hago para cambiar unicamente una propiedad que se encuentra
    //de este observable .obs ????
    usuario.update((val) {
      val!.edad = pEdad; // ! si va a venir
    });
  }

  void agregarProfesion(String profesion) {
    usuario.update((val) {
      //[...val.profesiones, profesion]: las profesiones
      //que tiene actualmente mas la profesion que estoy anadiendo
      //nos creamos un nuevo arreglo con las profesiones
      val!.profesiones = [...val.profesiones, profesion];
    });
  }
}
