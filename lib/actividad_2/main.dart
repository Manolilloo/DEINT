
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Juego(),
  ));
}

class Juego extends StatefulWidget {
  const Juego({super.key});

  @override
  State<Juego> createState() => _JuegoState();
}

class _JuegoState extends State<Juego> {

  final List<String> imagenes = [
    'assets/images/rock.png',
    'assets/images/paper.png',
    'assets/images/scissors.png',
  ];

  String jugador = 'assets/images/rock.png';
  String maquina = 'assets/images/rock.png';

  String resultado = 'Pulsa GO!! para jugar';

  void jugar() {
    int j = Random().nextInt(3);
    int m = Random().nextInt(3);

    setState(() {
      jugador = imagenes[j];
      maquina = imagenes[m];

      if (j == m) {
        resultado = 'EMPATE';
      } else if (
      (j == 0 && m == 2) ||
          (j == 1 && m == 0) ||
          (j == 2 && m == 1)
      ) {
        resultado = 'GANA EL JUGADOR';
      } else {
        resultado = 'GANA LA MÁQUINA';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rock Paper Scissors'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('JUGADOR'),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(jugador, height: 250,
                          width: 250),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('JUGADOR 2'),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(maquina, height: 250,
                      width: 250,),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: jugar,
              child: const Text('GO!!'),
            ),

            const SizedBox(height: 20),

            Text(
              resultado,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
