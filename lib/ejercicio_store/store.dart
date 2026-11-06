
import 'package:flutter/material.dart';

import 'pantalla_imagen.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListTileColorImg> items = [
      const ListTileColorImg(
        datos: DatosImagen(
          rutaImagen: 'assets/images/pablomotos.jpg',
          nombre: 'Pablo',
          color: Colors.green,
          descripcion: 'Este es Pablo',
        ),
        tipoRuta: 'anonima',
      ),

      const ListTileColorImg(
        datos: DatosImagen(
          rutaImagen: 'assets/images/dandy.jpg',
          nombre: 'Dandy',
          color: Colors.red,
          descripcion: '👌👌👌',
        ),
        tipoRuta: 'nombrada',
      ),

      const ListTileColorImg(
        datos: DatosImagen(
          rutaImagen: 'assets/images/chilling.jpg',
          nombre: 'Mi compi',
          color: Colors.grey,
          descripcion: 'Mi compiii',
        ),
        tipoRuta: 'generada',
      ),

      const ListTileColorImg(
        datos: DatosImagen(
          rutaImagen: 'assets/images/jorgejavi.jpg',
          nombre: 'JorgeJavi',
          color: Colors.redAccent,
          descripcion: 'This is Jorge',
        ),
        tipoRuta: 'generada',
      ),

      const ListTileColorImg(
        datos: DatosImagen(
          rutaImagen: 'assets/images/image_2.jpg',
          nombre: 'Gafas para ver',
          color: Colors.white,
          descripcion: 'Fotaca 5',
        ),
        tipoRuta: 'generada',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('STORE'),
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return items[index];
        },
        separatorBuilder: (context, index) {
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
  final DatosImagen datos;
  final String tipoRuta;

  const ListTileColorImg({
    required this.datos,
    required this.tipoRuta,
    super.key,
  });

  void abrirPantalla(BuildContext context) {

    // RUTA ANONIMA
    if (tipoRuta == 'anonima') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PantallaImagen(datos: datos),
        ),
      );

      // RUTA NOMBRADA
    } else if (tipoRuta == 'nombrada') {
      Navigator.pushNamed(
        context,
        '/imagen-nombrada',
        arguments: datos,
      );

      // RUTA GENERADA
    } else {
      Navigator.pushNamed(
        context,
        '/imagen-generada',
        arguments: datos,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 80,
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Image.asset(
          datos.rutaImagen,
          fit: BoxFit.cover,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(datos.nombre),
          Text(datos.descripcion),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.chevron_right),
        onPressed: () {
          abrirPantalla(context);
        },
      ),
      onTap: () {
        abrirPantalla(context);
      },
    );
  }
}
