//! ClipRect
import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 5',
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
          Center(
            child: ClipRect(
              clipper: MyClipper(),
              child: Container(
                width: 200, // Tamaño ajustado del Container
                height: 200, // Tamaño ajustado del Container
                color: Colors.orangeAccent,
              ),
            ),
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

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // Recorta el área del Container a partir de las coordenadas (50, 0) con tamaño 80x80
    return const Rect.fromLTWH(50, 0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false; // No es necesario volver a recortar si no cambia el estado
  }
}
