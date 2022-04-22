import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  //
  Usuario? _usuario;

  Usuario? get usuario => _usuario; //simplemente retorno la instancia

  //*establecer una forma para cargar el usuario, mediante setter
  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  bool get existeUsuario => (_usuario != null) ? true : false;
}
