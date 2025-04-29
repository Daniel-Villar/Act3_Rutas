import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  bool? _isChecked = false;
  bool? _isChecked2 = false;
  bool? _isChecked3 = null; // Estado tristate (null)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pantalla Siete - Checkbox",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffd493ff),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckboxListTile(
              title: const Text('Opción Principal',
                  style: TextStyle(fontSize: 18)),
              subtitle: const Text('Esta es la opción más importante'),
              value: _isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                });
              },
              activeColor: Colors.orangeAccent,
              checkColor: Colors.white,
              tileColor: Colors.black12,
              controlAffinity: ListTileControlAffinity.leading,
              tristate: false,
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('Opción Secundaria',
                  style: TextStyle(fontSize: 16)),
              value: _isChecked2,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked2 = newValue;
                });
              },
              secondary: const Icon(Icons.star, color: Colors.amber),
              activeColor: Colors.blueAccent,
            ),
            const SizedBox(height: 20),
            CheckboxListTile(
              title: const Text('Opción Tri-State',
                  style: TextStyle(fontSize: 16)),
              subtitle: const Text('Puede tener estado nulo'),
              value: _isChecked3,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked3 = newValue;
                });
              },
              activeColor: Colors.green,
              tristate: true,
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
                child: const Text('Regresar',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
