import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Uno",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ver pantalla dos'),
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ver pantalla tres'),
            ),
          ),
          const SizedBox(height: 30), // Espacio adicional
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4'); // Nueva ruta
              },
              child: const Text('Ver pantalla cuatro'),
            ),
          ),
          const SizedBox(height: 30), // Espacio adicional
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5'); // Nueva ruta
              },
              child: const Text('Ver pantalla cinco'),
            ),
          ),
          const SizedBox(height: 30), //
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6'); // Nueva ruta
              },
              child: const Text('Ver pantalla seis'),
            ),
          ),
          const SizedBox(height: 30), //
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7'); // Nueva ruta
              },
              child: const Text('Ver pantalla siete'),
            ),
          ),
        ],
      ),
    );
  }
}
