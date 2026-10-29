import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListaNumeros(),
        ),
      ),
    );
  }
}

class ListaNumeros extends StatelessWidget {
  const ListaNumeros({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 51, // Del 0 al 50 inclusive
      itemBuilder: (context, index) {
        final esPar = index % 2 == 0;
        return Container(
          color: esPar ? Colors.red[200] : Colors.green[200],
          child: ListTile(
            title: Text(
              esPar ? 'Numero PAR: $index' : 'Numero IMPAR: $index',
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        final esDeParAImpar = index % 2 == 0;
        return Divider(
          height: 1,
          thickness: 2,
          color: esDeParAImpar ? Colors.black : Colors.blue,
        );
      },
    );
  }
}