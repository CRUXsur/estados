import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';
//import 'package:estados/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //La pagina1 tiene que mostrar de manera condicional algo!
    //Inyectamos lo que es nuestro UsuarioController
    //vamos a hacer una inyeccion de una dependencia en nuestro
    //context que se encuentra manejado por GetX, esta dependencia
    //puede ser cualquier cosa, puede ser inclusive una instancia de
    //cualquier clase o cualquier clase que uds quieran aunque no sea
    //un controlador de GetX, cualquier cosa...en este caso
    //inyectamos un UsuarioController()
    //esto eleva UsuarioController al context
    //y asi tengo la informacion de la creacion de esta instancia:
    //Get.put(UsuarioController());
    final usuarioCtrl = Get.put(UsuarioController());

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina1')),
      ),
      body: Obx(
        () => usuarioCtrl.existeUsuario.value
            ? InformacionUsuario(usuario: usuarioCtrl.usuario.value)
            : const NoInfo(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        // onPressed: () {
        //   Navigator.pushNamed(context, 'pagina2');
        // },
        //onPressed: () => Navigator.pushNamed(context, 'pagina2'),
        //onPressed: () => Get.to(const Pagina2Page()),
        onPressed: () => Get.toNamed('pagina2', arguments: {
          'nombre': 'Andres',
          'edad': 12,
        }),
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No hay usuario seleccionado'));
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario({
    Key? key,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('Nombre: ${usuario.nombre}')),
          ListTile(title: Text('Edad: ${usuario.edad}')),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...usuario.profesiones.map((profesion) => ListTile(
                title: Text(profesion),
              ))
          // ListTile(title: Text('Prefesiones1')),
          // ListTile(title: Text('Profesiones1')),
          // ListTile(title: Text('Profesiones1')),
        ],
      ),
    );
  }
}
