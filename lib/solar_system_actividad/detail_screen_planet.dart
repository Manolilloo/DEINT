import 'package:flutter/material.dart';

class DetallePlaneta extends StatelessWidget {
  const DetallePlaneta({super.key});


  /*Esta va a ser la pantalla donde se muestra la info
  * de cada planeta una vez pulses en uno. y para volver
  * le das al icono de arriba a la izq*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del planeta"),
        backgroundColor: Colors.grey[700],
        foregroundColor: Colors.white,
        centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.chevron_left),
          ),
      ),
      body: Center(
        child: Text("Texto de ejemplo"),
      ),
    );
  }
}
