import 'package:flutter/material.dart';
import 'package:valenciarutas/pagina_Inicial.dart';
import 'package:valenciarutas/pagina_uno.dart';
import 'package:valenciarutas/pagina_dos.dart';
import 'package:valenciarutas/pagina_tres.dart';
import 'package:valenciarutas/pagina_cuatro.dart';
import 'package:valenciarutas/pagina_cinco.dart';
import 'package:valenciarutas/Pagina_seis.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
