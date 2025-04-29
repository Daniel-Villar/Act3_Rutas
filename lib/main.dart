import 'package:flutter/material.dart';
import 'package:villarRutas/pagina_cinco.dart';
import 'package:villarRutas/pagina_seis.dart';
import 'package:villarRutas/pagina_siete.dart';
import 'package:villarRutas/pagina_uno.dart';
import 'package:villarRutas/pagina_dos.dart';
import 'package:villarRutas/pagina_tres.dart';
import 'package:villarRutas/pagina_cuatro.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
