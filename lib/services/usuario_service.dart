import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  //
  Usuario? _usuario;

  Usuario? get usuario => _usuario; //simplemente retorno la instancia
  bool get existeUsuario => (_usuario != null) ? true : false;

  //*establecer una forma para cargar el usuario, mediante setter
  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  //* (_usuario != null)  : false;
  void removerUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesion() {
    _usuario?.profesiones.add('Profesion ${_usuario!.profesiones.length + 1}');
    notifyListeners();
  }
}
