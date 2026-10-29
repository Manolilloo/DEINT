import 'package:flutter/material.dart';

void main() {
  runApp(const Ejercicio());
}

class Ejercicio extends StatelessWidget {
  const Ejercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container(color: Colors.blue)),
                        Expanded(flex: 5, child: Container(color: Colors.green)),
                      ],
                    ),
                  ),
                  Expanded(child: Container(color: Colors.yellow)),
                ],
              ),
            ),
            Expanded(child: Container(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
