
import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});




  @override
  Widget build(BuildContext  context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.greenAccent[400]
                ),
            drawer: Drawer(
              child: ListView(
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                    ),
                    child: Text(
                      'Epm ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    title: const Text('Productos'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Servicios'),
                     onTap: () {
                Navigator.pushNamed(context, '/second');
              },
                  ),
                ],
              ),
            )));
  }
}
