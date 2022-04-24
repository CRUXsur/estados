import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/bloc/usuario/usuario_cubit.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina1')),
      ),
      body: BlocBuilder<UsuarioCubit, UsuarioState>(
        builder: (_, state) {
          //
          print(state);

          if (state is UsuarioInitial) {
            return const Center(child: Text('No hay información del usuario'));
          } else {
            return const InformacionUsuario();
          }

          //  return const InformacionUsuario();//1.
        },
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
  const InformacionUsuario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Nombre:')),
          ListTile(title: Text('Edad:')),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Prefesiones1')),
          ListTile(title: Text('Profesiones1')),
          ListTile(title: Text('Profesiones1')),
        ],
      ),
    );
  }
}
