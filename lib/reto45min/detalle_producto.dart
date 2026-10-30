import 'package:flutter/material.dart';

class DetalleProducto extends StatelessWidget {
  final Image imageLarge;
  final String nombre;
  final double precio;
  final String descripcion;

  DetalleProducto({
    required this.imageLarge,
    required this.nombre,
    required this.precio,
    required this.descripcion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.chevron_left),
        ),
        title: Text('Detalle del Producto'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            SizedBox(height: 200, width: 300, child: imageLarge),
            Padding(padding: EdgeInsets.only(top: 40)),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(nombre), Text('Price: $precio €')],
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 110,
              width: 500,
              child: Container(
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.all(30),
                child: Text(descripcion, textAlign: .center,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
