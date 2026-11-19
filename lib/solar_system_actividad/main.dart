import 'package:carmelo/solar_system_actividad/detail_screen_planet.dart';
import 'package:carmelo/solar_system_actividad/planet_data.dart';
import 'package:carmelo/solar_system_actividad/solar_system.dart';
import 'package:flutter/material.dart';


void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/Detalle') {
          final planet = settings.arguments as PlanetData;
          return MaterialPageRoute(
            builder: (context) => DetallePlaneta(planet: planet),
          );
        }
        return MaterialPageRoute(
          builder: (context) => const SolarSystem(),
        );
      },
    );
  }
}
