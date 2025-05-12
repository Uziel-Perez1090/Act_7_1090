//! CupertinoButton

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 6',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
            onPressed: () {
              // Añadir funcionalidad si es necesario
              print('CupertinoButton pressed');
            },
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          CupertinoButton.filled(
            onPressed: () {
              // Añadir funcionalidad si es necesario
              print('CupertinoButton.filled pressed');
            },
            child: const Text('Enabled'),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/pantalla1');
              },
              child: const Text('Pantalla 1'),
            ),
          ),
        ],
      ),
    );
  }
}
