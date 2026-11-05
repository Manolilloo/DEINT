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
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.blueGrey[600],
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                                Expanded(child: const CajasEscudo()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 4, child: Container(color: Colors.yellow)),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [Expanded(child: Container(color: Colors.blue))],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CajasEscudo extends StatelessWidget {
 const CajasEscudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Icon(Icons.shield, color: Colors.grey),
      margin: const EdgeInsets.all(3),
      alignment: .center,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
