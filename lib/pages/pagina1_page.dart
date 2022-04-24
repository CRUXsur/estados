import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';
import 'package:estados/models/usuario.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina1')),
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit, UsuarioState>(builder: (_, state) {
      switch (state.runtimeType) {
        case UsuarioInitial:
          return const Center(child: Text('No hay información del usuario'));
          break;
        case UsuarioActivo:
          return InformacionUsuario((state as UsuarioActivo).usuario);
          break;
        default:
          return const Center(child: Text('Estado no reconocido '));
      }
      //3.
      // if (state is UsuarioInitial) {
      //   return const Center(child: Text('No hay información del usuario'));
      // } else if (state is UsuarioActivo) {
      //   return InformacionUsuario(state.usuario);
      // } else {
      //   return const Center(child: Text('Estado no reconocido '));
      // }
      //2.
      // if (state is UsuarioInitial) {
      //   return const Center(child: Text('No hay información del usuario'));
      // } else {
      //   return const InformacionUsuario();
      // }
      //1.
      //  return const InformacionUsuario();
    });
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
          ListTile(title: Text('Edad:${usuario.edad}')),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...usuario.profesiones
              .map((profesion) => ListTile(title: Text(profesion)))
              .toList()
        ],
      ),
    );
  }
}
