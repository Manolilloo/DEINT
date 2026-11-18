import 'package:flutter/material.dart';

class SolarSystem extends StatelessWidget {
  const SolarSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/images/plantetas/earth.png"),
            title: const Text("Earth"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/venus.png"),
            title: const Text("Venus"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/mercury.png"),
            title: const Text("Mercury"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/mars.png"),
            title: const Text("Mars"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/jupiter.png"),
            title: const Text("Jupiter"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/saturn.png"),
            title: const Text("Saturn"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/uranus.png"),
            title: const Text("Uranus"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/neptune.png"),
            title: const Text("Neptune"),
          ),
          ListTile(
            leading: Image.asset("assets/images/plantetas/pluto.png"),
            title: const Text("Pluto"),
          ),
        ],
      ),
    );
  }
}