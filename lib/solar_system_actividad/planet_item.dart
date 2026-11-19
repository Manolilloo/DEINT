import 'package:carmelo/solar_system_actividad/planet_data.dart';
import 'package:flutter/material.dart';

class PlanetTile extends StatelessWidget {
  final PlanetData planet;

  const PlanetTile({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      leading: Image.asset(planet.imagenRuta),
      title: Text(planet.nombre),
      subtitle: Text(planet.distancia),
      trailing: const Icon(Icons.navigate_next_rounded),
    );
  }
}
