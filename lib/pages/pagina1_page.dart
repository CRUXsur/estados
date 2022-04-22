import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina1')),
      ),
      //body: const InformacionUsuario(),
      body: usuarioService.existeUsuario
          ? InformacionUsuario(usuarioService.usuario!)
          : const Center(
              child: Text('no hay usuario seleccionado'),
            ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario(this.usuario);

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
          ListTile(title: Text('Prefesiones1')),
          ListTile(title: Text('Profesiones1')),
          ListTile(title: Text('Profesiones1')),
        ],
      ),
    );
  }
}
