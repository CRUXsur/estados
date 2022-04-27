import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/pages/pagina2_page.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagina1')),
      ),
      body: const InformacionUsuario(),
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
