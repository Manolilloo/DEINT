import 'package:flutter/material.dart';

import 'pantalla_imagen.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListTileColorImg> items = [
      ListTileColorImg(
        image: Image.asset('assets/images/pablomotos.jpg'),
        nombre: 'Palblo',
        color: Colors.green,
        descripcion: 'Este es Pablo',
      ),
      ListTileColorImg(
        image: Image.asset('assets/images/dandy.jpg'),
        nombre: 'Dandy',
        color: Colors.red,
        descripcion: '👌👌👌',
      ),
      ListTileColorImg(
        image: Image.asset('assets/images/chilling.jpg'),
        nombre: 'Mi compi',
        color: Colors.grey,
        descripcion: 'Mi compiii',
      ),
      ListTileColorImg(
        image: Image.asset('assets/images/jorgejavi.jpg'),
        nombre: 'JorgeJavi',
        color: Colors.redAccent,
        descripcion: 'This is Jorge',
      ),
      ListTileColorImg(
        image: Image.asset('assets/images/image_2.jpg'),
        nombre: 'Gafas para ver',
        color: Colors.white,
        descripcion: 'Fotaca 5',
      ),
    ];
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('STORE')),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return items[index];
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 1,
            thickness: 1,
            color: Colors.black,
          );
        },
      ),
    );
  }
}

class ListTileColorImg extends StatelessWidget {
  String _nombre;
  String _descripcion;
  Color _color;
  Image _image;

  ListTileColorImg({
    required this._image,
    required this._nombre,
    required this._color,
    required this._descripcion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 80,
      leading: SizedBox(width: 40, height: 40, child: _image),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(_nombre), Text(_descripcion)],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.chevron_right),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PantallaImagen(backgroundColor: _color, image: _image, nombre: _nombre,),
            ),
          );
        },
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PantallaImagen(backgroundColor: _color, image: _image, nombre: _nombre,),
          ),
        );
      },
    );
  }
}
