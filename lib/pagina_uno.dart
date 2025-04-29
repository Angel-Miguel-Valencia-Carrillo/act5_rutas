import 'package:flutter/material.dart';

//! AnimatedAlign

class PantallaUno extends StatefulWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  State<PantallaUno> createState() => PantallaUnoState();
}

class PantallaUnoState extends State<PantallaUno> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Uno', // Corregido: Cambiado de "Pantalla Dos" a "Pantalla Uno"
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xff19f1e6),
        centerTitle: true,
      ),
      body: GestureDetector(
        // Añadido el widget body
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
