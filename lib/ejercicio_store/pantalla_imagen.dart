
import 'package:flutter/material.dart';

class DatosImagen {
  final String nombre;
  final String descripcion;
  final Color color;
  final String rutaImagen;

  const DatosImagen({
    required this.nombre,
    required this.descripcion,
    required this.color,
    required this.rutaImagen,
  });
}

class PantallaImagen extends StatelessWidget {
  final DatosImagen datos;

  const PantallaImagen({
    required this.datos,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(datos.nombre),
      ),
      backgroundColor: datos.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset(datos.rutaImagen),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('VOLVER'),
            ),
          ],
        ),
      ),
    );
  }
}
