import 'package:flutter/material.dart';

class BotonVerde extends StatefulWidget {
  const BotonVerde({super.key});

  @override
  State<BotonVerde> createState() {
    return _BotonVerdeState();
  }
}

class _BotonVerdeState extends State<BotonVerde> {

  Color colorFondo = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorFondo,
      body: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              colorFondo = Colors.green;
            });
          },
          child: const Text('VERDE'),
        ),
      ),
    );
  }
}