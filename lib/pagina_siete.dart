//! CupertinoSlidingSegmentedControl

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  int _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla 7',
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
          CupertinoSlidingSegmentedControl<int>(
            children: const {
              0: Text('Text 0'),
              1: Text('Text 1'),
              2: Text('Text 2'),
            },
            groupValue: _sliding,
            onValueChanged: (int? newValue) {
              setState(() {
                _sliding = newValue ?? 0;
              });
            },
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
