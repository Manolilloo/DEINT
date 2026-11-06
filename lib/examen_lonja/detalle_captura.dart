import 'package:flutter/material.dart';
import 'package:carmelo/examen_lonja/mock_data.dart';

class DetalleCaptura extends StatelessWidget {
  final String calidad;
  final String nombrePescao;
  final double precioKg;
  final String nombreBarco;
  final String hora;
  final String artePesca;
  final String descripcion;

  DetalleCaptura({
    super.key,
    required this.calidad,
    required this.nombrePescao,
    required this.precioKg,
    required this.nombreBarco,
    required this.hora,
    required this.artePesca,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Detalle Captura'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.lightBlueAccent[100],
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: .start,
                    children: [
                      Container(child: Text(calidad)),
                      Container(child: Text(nombrePescao)),
                    ],
                  ),
                  Container(
                    color: Colors.green[100],
                    child: Text('$precioKg€/kg'),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.deepOrange[100],
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: .start,
                      children: [
                        Icon(Icons.sailing_rounded),
                        Container(child: Text('DATOS DEL BARCO')),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: .spaceEvenly,
                    children: [
                      Container(child: Text(nombreBarco)),
                      Container(child: Text(hora)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(alignment: .center, child: Text(artePesca)),
                  const SizedBox(height: 20),
                ],
              ),
            ),

            Container(
              color: Colors.amberAccent[100],
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: .centerStart,
                    child: Text('DESCRIPCIÓN:'),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(descripcion),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
