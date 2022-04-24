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
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            //onPressed: () => usuarioService.removerUsuario(),
            //or
            onPressed: usuarioService.removerUsuario,
          )
        ],
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
          //
          //tomo el listado de profesiones , lo paso por el map
          //y este map me perimte, transformar cada una de ellas
          //y retornar algo diferente, en este caso voay a retorar una lista
          //o un nuevo ListTile
          //... hace la desestructuracion de cada uno de los elementos
          //de un arreglo, todo esto regresa un arreglo de ListTiles,
          //al usar la desestructuracion dentro de un arreglo
          //entonces manda cada uno de los elementos de la lista de manera
          //individual...y lo acepta perfectamente

          ...usuario.profesiones
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList()
          // ListTile(title: Text('Prefesiones1')),
        ],
      ),
    );
  }
}
