import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.greenAccent[400]),
            drawer: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                    ),
                    child: Text(
                      'Contabilidad ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text('Produstos'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Servicios'),
                    onTap: () {},
                  ),
                ],
              ),
            )));
  }
}
