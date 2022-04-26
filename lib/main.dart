import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:estados/bloc/user/user_bloc.dart';

import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/pages/pagina2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => UserBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': (_) => const Pagina1Page(),
          'pagina2': (_) => const Pagina2Page(),
        },
      ),
    );
  }
}

// Patron BLoC
// BLoC: tiene 3 archivos:
// 1. Bloc como tal en el cual tenemos, metodos, propiedadesGlobales, 
// 2. Estado: Es decir como se encuentra el Bloc en ese momento: p/ejemplo
//    si nuestro bloc fuera para manejar un auto, el estado podria decir,
//    el auto esta encendido,apagado, tiene tanto combustible, estado de los 
//    frenos, kilometraje, todo eso podria ser el estado.
// 3. Eventos: Nosotros vamos a mofdificar el estado unicamente disparando
//    eventos, es decir, el evento de encender el auto, el evento de apagar,
//    evento de echar combustible, evento de recorrer el camino, etc

// 
//**
//user_bloc.dart: Quien tiene la informacion,
//                de cual es el estado actual y procesa los eventos.
//user_event.dart:Son acciones que literalmente son eventos, son acciones que
//                uds van a poder disparar, que va a recibir el user_bloc
//                y cambiar el state
//user_state.dart:Es como se encuentra el estado de la app,el usuario esta 
//                logueado, cuantos productos tengo, cuanto es el monto del
//                carrito de compras, cuanto debe,aqui sabemos exactamente 
//                como se encuentra el estado, cuanto es el contador....
// */
