
import 'package:flutter/material.dart';
import 'store.dart';
import 'pantalla_imagen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Store(),

      // RUTA NOMBRADA
      routes: {
        '/imagen-nombrada': (context) {
          final datos = ModalRoute.of(context)!.settings.arguments as DatosImagen;

          return PantallaImagen(datos: datos);
        },
      },

      // RUTA GENERADA
      onGenerateRoute: (settings) {
        if (settings.name == '/imagen-generada') {
          final datos = settings.arguments as DatosImagen;

          return MaterialPageRoute(
            builder: (context) => PantallaImagen(datos: datos),
          );
        }

        return null;
      },
    );
  }
}
