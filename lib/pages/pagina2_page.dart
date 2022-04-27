import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:estados/bloc/user/user_bloc.dart';
import 'package:estados/models/user.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

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
                //creo el usuario
                final newUser = User(
                  nombre: 'Grace',
                  edad: 15,
                  profesiones: ['LondonTown School'],
                );
                //aqui llamo al evento!
                //primero necesitamos obtener la instancia de nuestro BLoC
                //que se encuentra en algun lado del contexto(context)
                //    BlocProvider.of<UserBloc>(context, listen: false)
                //        .add(ActivateUser(newUser));
                userBloc.add(ActivateUser(newUser));
              },
            ),
            MaterialButton(
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                //    BlocProvider.of<UserBloc>(context, listen: false)
                //        .add(ChangeUserAge(25));
                userBloc.add(ChangeUserAge(25));
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
                userBloc.add(AddProfession('Nueva Profesion'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
