import 'package:carmelo/solar_system_actividad/detail_screen_planet.dart';
import 'package:carmelo/solar_system_actividad/solar_system.dart';
import 'package:flutter/material.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SolarSystem(),
        '/Detalle': (context) => const DetallePlaneta(),
      },
    );
  }
}
