import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool selected = false; // Controla la animación

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Dos",
          style: TextStyle(
            color: Colors.black, // Texto negro
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.yellow, // AppBar amarilla
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Contenedor beige con el FlutterLogo animado
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected; // Activa la animación
              });
            },
            child: Container(
              color: Color(0xfff4fcff), // Fondo beige
              width: double.infinity,
              height: 300,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50.0), // Logo animado
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Botón "Regresar" (igual que antes)
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }
}
