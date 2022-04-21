import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/pages/pagina2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider(lazy:false,create: (_) => UsuarioService()),
        ChangeNotifierProvider(create: (_) => UsuarioService()),
        //*ahora tengo una unica instancia de UsuarioService() dentro mi
        //*context, del cual todos los widgets hijos de MaterialApp
        //*podran disponer(esta en un alto! nivel),
      ],
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

//* Provider, al igual que singleton, me a ayudar a tener una unica instancia
//* creada de mi clase o inicializada dentro de el contexto, nosotros 
//* podemos tener varios providers pero usualmente se coloca uno a un nivel 
//* superior para que eso me permita compartir informacion en todos los 
//* widgets hijos 