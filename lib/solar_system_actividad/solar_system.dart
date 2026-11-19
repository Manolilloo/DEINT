import 'package:carmelo/solar_system_actividad/planet_data.dart';
import 'package:carmelo/solar_system_actividad/planet_item.dart';
import 'package:flutter/material.dart';

class SolarSystem extends StatelessWidget {
  const SolarSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solar System"),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>
            PlanetTile(planet: mockPlanetas[index]),
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemCount: mockPlanetas.length,
      ),
    );
  }
}
