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
                      color: Colors.blueGrey[800],
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
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.blueGrey[800],
                      child: Container(
                        margin: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Jugador 1 (Azul)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Icon(
                                    Icons.person,
                                    color: Colors.blue,
                                    size: 38,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Puntos: 120',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Colors.white24,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Jugador 2 (Rojo)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Icon(
                                    Icons.person_outline,
                                    color: Colors.red,
                                    size: 38,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Puntos: 120',
                                    style: TextStyle(color: Colors.white70),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
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
      margin: const EdgeInsets.all(2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blueGrey[600],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        Icons.shield,
        color: Colors.blueGrey[200],
      ),
    );
  }
}
