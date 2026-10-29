import 'package:flutter/material.dart';

class PantallaImagen extends StatelessWidget {
  String _nombre;
  Image _image;
  Color _backgroundColor;

  PantallaImagen({
    required this._image,
    required this._nombre,
    required this._backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(_nombre)),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 200)),
            SizedBox(height: 300, width: 300, child: _image),
            Padding(padding: EdgeInsets.only(top: 140)),
            SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('VOLVER'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
