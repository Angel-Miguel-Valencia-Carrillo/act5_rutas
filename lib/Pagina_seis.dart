import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => PantallaSeisState();
}

class PantallaSeisState extends State<PantallaSeis> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla seis', // Nota: El nombre dice "Pantalla Dos" pero la clase es PantallaSeis
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xffd74d23),
        centerTitle: true,
      ),
      body: Center(
        // Aquí se agregó el body que faltaba
        child: CheckboxListTile(
          title: const Text('Checkbox List Tile'),
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue;
            });
          },
          activeColor: Colors.orangeAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: const Text('This is a subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          tristate: true,
        ),
      ),
    );
  }
}
