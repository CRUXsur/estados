import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  //
  Usuario? _usuario;

  Usuario? get usuario => _usuario; //simplemente retorno la instancia

  bool get existeUsuario => (_usuario != null) ? true : false;
}
