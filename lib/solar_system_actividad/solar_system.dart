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
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/images/plantetas/earth.png"),
            title: const Text("Earth"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/venus.png"),
            title: const Text("Venus"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/mercury.png"),
            title: const Text("Mercury"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/mars.png"),
            title: const Text("Mars"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/jupiter.png"),
            title: const Text("Jupiter"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/saturn.png"),
            title: const Text("Saturn"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/uranus.png"),
            title: const Text("Uranus"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/neptune.png"),
            title: const Text("Neptune"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
          const Divider(height: 1),
          ListTile(
            leading: Image.asset("assets/images/plantetas/pluto.png"),
            title: const Text("Pluto"),
            trailing: Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
    );
  }
}
