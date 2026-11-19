import 'package:carmelo/solar_system_actividad/detail_screen_planet.dart';
import 'package:carmelo/solar_system_actividad/planet_data.dart';
import 'package:flutter/material.dart';

/*Aqui tenemos otro archivo que te devuelve una
* fila con la info de cada planeta y aqui esta
* la accion de que cuando pulses te lleve a la otra
* pantalla con los detalles del planeta en concreto
* que elijas*/
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
      onTap: () {
        Navigator.pushNamed(context, '/Detalle', arguments: planet);
      },
    );
  }
}
