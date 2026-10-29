import 'package:flutter/material.dart';

class PantallaTablero extends StatelessWidget {
  const PantallaTablero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablero de Juego Tactico'),
        backgroundColor: Colors.green[900],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(flex: 7, child: Container(color: Colors.red)),
                  Expanded(flex: 4, child: Container(color: Colors.yellow)),
                ],
              ),
            ),
            Expanded(
              child: Column(children: [Expanded(child: Container(
                color: Colors.blue
              ))]),
            ),
          ],
        ),
      ),
    );
  }
}
