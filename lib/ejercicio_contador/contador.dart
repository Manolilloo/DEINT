import 'package:carmelo/ejercicio_estados/boton_verde.dart';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ContadorState();
  }
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_contador.toString(), style: const TextStyle(fontSize: 80)),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _contador = _contador - 1;
              });
            },
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _contador = 0;
              });
            },
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _contador = _contador + 1;
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
