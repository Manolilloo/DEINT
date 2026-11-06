import 'package:carmelo/examen_lonja/detalle_captura.dart';
import 'package:flutter/material.dart';
import 'package:carmelo/examen_lonja/mock_data.dart';



//NO HE HECHO LA FUNCIONALIDAD DEL BOTON, CARMELO

class LaLonja extends StatelessWidget {
  const LaLonja({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LA LONJA'),
        actions: [Icon(Icons.wb_sunny_rounded), SizedBox(width: 20)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset(mockTiposPescado[0].imagenUrl),
            titleAlignment: .center,
            title: Column(
              children: [
                Text(mockTiposPescado[0].nombre),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.sailing_rounded),
                    Text(mockBarcos[0].nombre),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleCaptura(
                    artePesca: mockBarcos[0].artePesca,
                    calidad: mockCapturas[0].calidad,
                    descripcion: mockTiposPescado[0].descripcion,
                    hora: mockCapturas[0].horaDesembarque,
                    nombreBarco: mockBarcos[0].nombre,
                    nombrePescao: mockTiposPescado[0].nombre,
                    precioKg: mockCapturas[0].precioPorKg,
                  ),
                ),
              ),
              icon: Icon(Icons.navigate_next_rounded),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Image.asset(mockTiposPescado[1].imagenUrl),
            titleAlignment: .center,
            title: Column(
              children: [
                Text(mockTiposPescado[1].nombre),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.sailing_rounded),
                    Text(mockBarcos[1].nombre),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleCaptura(
                    artePesca: mockBarcos[1].artePesca,
                    calidad: mockCapturas[1].calidad,
                    descripcion: mockTiposPescado[1].descripcion,
                    hora: mockCapturas[1].horaDesembarque,
                    nombreBarco: mockBarcos[1].nombre,
                    nombrePescao: mockTiposPescado[1].nombre,
                    precioKg: mockCapturas[1].precioPorKg,
                  ),
                ),
              ),
              icon: Icon(Icons.navigate_next_rounded),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Image.asset(mockTiposPescado[2].imagenUrl),
            titleAlignment: .center,
            title: Column(
              children: [
                Text(mockTiposPescado[2].nombre),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.sailing_rounded),
                    Text(mockBarcos[2].nombre),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleCaptura(
                    artePesca: mockBarcos[2].artePesca,
                    calidad: mockCapturas[2].calidad,
                    descripcion: mockTiposPescado[2].descripcion,
                    hora: mockCapturas[2].horaDesembarque,
                    nombreBarco: mockBarcos[2].nombre,
                    nombrePescao: mockTiposPescado[2].nombre,
                    precioKg: mockCapturas[2].precioPorKg,
                  ),
                ),
              ),
              icon: Icon(Icons.navigate_next_rounded),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Image.asset(mockTiposPescado[3].imagenUrl),
            titleAlignment: .center,
            title: Column(
              children: [
                Text(mockTiposPescado[3].nombre),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Icon(Icons.sailing_rounded),
                    Text(mockBarcos[3].nombre),
                  ],
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalleCaptura(
                    artePesca: mockBarcos[3].artePesca,
                    calidad: mockCapturas[3].calidad,
                    descripcion: mockTiposPescado[3].descripcion,
                    hora: mockCapturas[3].horaDesembarque,
                    nombreBarco: mockBarcos[3].nombre,
                    nombrePescao: mockTiposPescado[3].nombre,
                    precioKg: mockCapturas[3].precioPorKg,
                  ),
                ),
              ),
              icon: Icon(Icons.navigate_next_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
