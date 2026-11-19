import 'package:carmelo/solar_system_actividad/planet_data.dart';
import 'package:flutter/material.dart';

class DetallePlaneta extends StatelessWidget {
  final PlanetData planet;

  const DetallePlaneta({super.key, required this.planet});

  /*Esta va a ser la pantalla donde se muestra la info
  * de cada planeta una vez pulses en uno. y para volver
  * le das al icono de arriba a la izq*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.nombre),
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      body: Center(child: Image.asset(planet.imagenRuta)),
    );
  }
}
