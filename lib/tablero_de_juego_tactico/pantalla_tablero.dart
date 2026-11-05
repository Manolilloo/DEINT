import 'package:flutter/material.dart';

class PantallaTablero extends StatelessWidget {
  const PantallaTablero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text(
          'Tablero de Juego Táctico',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blueGrey[800],
                    padding: const EdgeInsets.all(4),
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Icon(
                                  Icons.person,
                                  color: Colors.lightBlueAccent,
                                  size: 38,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Puntos: 120',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            thickness: 1,
                            indent: 25,
                            endIndent: 25,
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
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Icon(
                                  Icons.person_outline,
                                  color: Colors.redAccent,
                                  size: 38,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Puntos: 120',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
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
              color: Colors.grey[100],
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Text(
                      'Historial de Movimientos',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      children: [
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.blue,
                            child: Text('1', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 1 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla C4',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.red,
                            child: Text('2', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 2 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla C4',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.blue,
                            child: Text('3', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 1 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla B3',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.red,
                            child: Text('4', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 2 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla D5',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.blue,
                            child: Text('5', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 1 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla A2',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                        ListTile(
                          dense: true,
                          visualDensity: VisualDensity.compact,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          leading: const CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.red,
                            child: Text('6', style: TextStyle(color: Colors.white)),
                          ),
                          title: const Text(
                            'Jugador 2 movió pieza',
                            style: TextStyle(fontSize: 14),
                          ),
                          subtitle: const Text(
                            'Caballero a la casilla B1',
                            style: TextStyle(fontSize: 12),
                          ),
                          trailing: const Icon(Icons.history, size: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        color: Colors.blueGrey[100],
        size: 22,
      ),
    );
  }
}
