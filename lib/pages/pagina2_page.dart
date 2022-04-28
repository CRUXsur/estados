import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);
    //print(Get.arguments['nombre']);
    //
    //necesito saber cual es la instancia de mi UsuarioController
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina2')),
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
                //
                usuarioCtrl.cargarUsuario(Usuario(nombre: 'Andres', edad: 9));
              },
            ),
            MaterialButton(
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                usuarioCtrl.cambiarEdad(10);
              },
            ),
            MaterialButton(
              child: const Text(
                'Anadir Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                // usuarioCtrl.agregarProfesion(
                //     'Profesion #${usuarioCtrl.usuario.value.profesiones.length + 1}');
                usuarioCtrl.agregarProfesion(
                    'Profesion #${usuarioCtrl.profesionesCount + 1}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
