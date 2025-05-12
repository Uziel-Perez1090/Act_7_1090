import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue, // Fondo azul
          title: const Center(
            child: Text(
              'Pantalla Inicial',
              style: TextStyle(
                color: Colors.white, // Letra blanca
                fontSize: 20.0, // Tamaño de la letra 20
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla2');
                },
                child: const Text('Pantalla 2'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla3');
                },
                child: const Text('Pantalla 3'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla4');
                },
                child: const Text('Pantalla 4'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla5');
                },
                child: const Text('Pantalla 5'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla6');
                },
                child: const Text('Pantalla 6'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pantalla7');
                },
                child: const Text('Pantalla 7'),
              ),
            ),
          ],
        ));
  }
}
