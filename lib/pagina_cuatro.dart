//! Card

import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 4',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16.0), // Padding alrededor de todo el cuerpo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                elevation: 10, // Sombra sutil
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(15.0), // Bordes redondeados
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const SizedBox(height: 8),
                      const Text(
                        'This is a Flutter card',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        child: const Text('Press'),
                        onPressed: () {
                          // Acción cuando se presiona el botón
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context, '/pantalla1'); // Regresar a la pantalla 1
                },
                child: const Text('Pantalla 1'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
