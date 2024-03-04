import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; //Controlar el widget switch
  double sliderValue = 0.0; // Controla el widget slider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'Guardar',
                    )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(223, 214, 188, 200),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cottage),
            label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.data_exploration),
              label: 'Datos',
              ),
        ],
      ),
    );
  }

  TextField entradaNombre() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Escribe tu name:',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '¿Te gusta Flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
            value: switchValue,
            onChanged: (value) {
              setState(() {
                //Sufrir cambios mandar a llamar <---
                switchValue = value;
              });
            }),
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Indica que tanto te gusta Flutter: ',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
            min: 0.0,
            max: 10.0,
            divisions: 10,
            label: '${sliderValue.round()}',
            activeColor: const Color.fromARGB(223, 170, 83, 170),
            thumbColor: AppTheme.secondaryColor,
            inactiveColor: AppTheme.backColor,
            value: sliderValue,
            onChanged: (value) {
              setState(() {
                sliderValue = value;
                print('Se cambio el slider: $sliderValue');
              });
            })
      ],
    );
  }
}