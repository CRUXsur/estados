import 'dart:async';

import 'package:estados/models/usuario.dart';

//* 1. creo singleton: haciendola privada _UsuarioService
class _UsuarioService {
  Usuario? _usuario; //ppropiedad de tipo Usuario
  //2. lo ahgo privado usuario, para ver la manera de
  //para ver la manera como se leen y como se establecen valores

  //* Necesito utilizar un stream, para poder decirle a los demas
  //* widgets que esten escuchando ese stream decirle, EHH! la
  //* informacion cambio!, redibujate con los ultimos valores.
  //* y tb le decimos que informacion fluye atraves de este stream
  //* lo ideal es que nosotros lo definamos el tipo:
  //* lo definimos como un  objeto de tipo Usuario

  StreamController<Usuario> _usuarioStreamController =
      new StreamController<Usuario>();

  Usuario? get usuario => _usuario;

  //! tb quiero saber si ya tengo establecido un usuario,
  //! si lo tengo lo muestro y si no lo muestro como
  //! 'usuario no seleccionado'.....
  //! creo un getter que retorna un valor bool
  bool get existeUsuario => (_usuario != null) ? true : false;

  //*nuestro stream va a emitir un usuario y va a ser
  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  //y un metodo para cargar la informacion, establecer valores
  void cargarUsuario(Usuario? user) {
    _usuario = user;
    //! y aqui anado un nuevo elemento al stream
    _usuarioStreamController.add(user!);
  }

  // y si yo quiero cambiar la edad
  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    //! lo mismo podemos hacer para la edad
    _usuarioStreamController.add(_usuario!);
  }
}

//* y a la vez Exporto la unica instancia de mi aplicacion

//* entoces va a usar esta instancia solamente: usurioService
//* y esto es en teoria un singleton, porque en todos los lugares
//* donde use usuarioService va a utilizar la misma instancia

//* otra seria crear el factory constructor, el constructor privado.....

final usuarioService = _UsuarioService();
