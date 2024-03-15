import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/models/productMode.dart';
import 'package:http/http.dart' as http;

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  final List<Product> products = [
    Product('Producto 1', 10.0),
    Product('Producto 2', 20.0),
    Product('Producto 3', 30.0),
    Product('Producto 4', 40.0),
    Product('Producto 5', 50.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Products',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.greenAccent[400]),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toString()}'),
            onTap: () {
              sendData();
              // Aquí puedes manejar la acción cuando se toca un producto
              print('Tocaste ${products[index].name}');
            },
          );
        },
      ),
    );
  }

  void sendData() async {
    // Crear un mapa con los datos que quieres enviar
    Map<String, dynamic> data = {
      "id": "1",
    };

    // Convertir el mapa a un JSON
    String jsonString = json.encode(data);

    // print(jsonString);

    // Hacer la solicitud POST
    var url = Uri.parse('http://194.163.164.86:5000/get-user');
    var response = await http.post(url, body: jsonString, headers: {
      'Content-Type': 'application/json', // Indicar el tipo de contenido JSON
    });

    // print(response.body);

    // Verificar el código de estado de la respuesta
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      Map<String, dynamic> respData = data['resp']['data'];
      // print(data);

      // Map<String, dynamic> datas = respData['data'];

      // Iterando sobre el mapa 'data'
      respData.forEach((key, value) {
        print('$key: $value');
      });

      // La solicitud fue exitosa, hacer algo con la respuesta
      // print('Solicitud POST exitosa');
      // print('Respuesta: ${response.body}');
    } else {
      // La solicitud no fue exitosa, mostrar el código de estado
      // print('Error en la solicitud POST: ${response.statusCode}');
    }
  }
}
