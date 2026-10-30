import 'package:carmelo/reto45min/detalle_producto.dart';
import 'package:flutter/material.dart';

class RestoApp extends StatelessWidget {
  const RestoApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListaDetallesProducto> items = [
      ListaDetallesProducto(
        imageSmall: Image.asset('assets/images/comida/burger_small.png'),
        imageLarge: Image.asset('assets/images/comida/burger_large.png'),
        nombre: 'Burger Classic',
        descripcionLarga: 'Deliciosa hamburguesa de carne 100% de vacuno, queso cheddar y salsa especial.',
        descripcionCorta: 'Queso, carne y bacon - €8.50',
        precio: 8.50,
      ),
      ListaDetallesProducto(
        imageSmall: Image.asset('assets/images/comida/pizza_small.png'),
        imageLarge: Image.asset('assets/images/comida/pizza_large.png'),
        nombre: 'Pizza Pepperoni',
        descripcionLarga:
            'Deliciosa pizza pepperoni 100% de vacuno y queso cheddar.',
        descripcionCorta: 'Queso mozarella - €10.00',
        precio: 10.00,
      ),
      ListaDetallesProducto(
        imageSmall: Image.asset('assets/images/comida/tacos_small.png'),
        imageLarge: Image.asset('assets/images/comida/tacos_large.png'),
        nombre: 'Tacos al Pastor',
        descripcionLarga:
            'Deliciosa pizza pepperoni 100% de vacuno y queso cheddar.',
        descripcionCorta: '3 unidades con piña - €7.00',
        precio: 7.00,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
        title: Text('RestoApp'),
        actions: [
          Icon(Icons.shopping_cart, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 1, thickness: 1, color: Colors.black);
        },
      ),
    );
  }
}

class ListaDetallesProducto extends StatelessWidget {
  final String _nombre;
  final String _descripcionLarga;
  final String _descripcionCorta;
  final Image _imageSmall;
  final Image _imageLarge;
  final double _precio;

  ListaDetallesProducto({
    required this._imageLarge,
    required this._imageSmall,
    required this._nombre,
    required this._descripcionCorta,
    required this._descripcionLarga,
    required this._precio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 80,
      leading: SizedBox(width: 60, height: 60, child: _imageSmall),
      title: Column(
        crossAxisAlignment: .start,
        children: [Text(_nombre), Text(_descripcionCorta)],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.chevron_right, size: 40,),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalleProducto(
                nombre: _nombre,
                descripcion: _descripcionLarga,
                precio: _precio,
                imageLarge: _imageLarge,
              ),
            ),
          );
        },
      ),
    );
  }
}
