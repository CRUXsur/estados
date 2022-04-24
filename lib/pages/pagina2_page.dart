import 'package:estados/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario!.nombre}')
            : const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                //* dentro de un metodo el listen en false o lo llevo arriba
                //final usuarioService =
                //    Provider.of<UsuarioService>(context, listen: false);
                //*me creo el usuario
                final newUser = Usuario(
                    nombre: 'Grace',
                    edad: 15,
                    profesiones: [
                      'Fullstack Developer',
                      'Video Jugador Experto'
                    ]);
                //*aqui uso el usuario para esteblecer un valor
                //*al hacerlo asi va estar disparando el setter del
                //*UsuarioService
                usuarioService.usuario = newUser;
              },
            ),
            MaterialButton(
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioService.cambiarEdad(45);
              },
            ),
            MaterialButton(
              child: const Text(
                'Anadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                //
                usuarioService.agregarProfesion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
