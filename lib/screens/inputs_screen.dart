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
  //nuevo hoy
  int radioSelected = 0;
  bool isCheked1 = false;
  bool isCheked2 = false;
  bool isCheked3 = false;
  //termina
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
            //nuevo hoy
            entradaRadio(),
            Text(
              '¿Qué usas para correr tus apps?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            //termina nuevo
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

  //nuevo hoy
  Column entradaRadio() {
    return Column(
      children: [
        Text(
          '¿Qué prefieres para desarrollo movil?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: radioSelected,
              onChanged: (value) {
                setState(() {
                  radioSelected = value!;
                  print('Selección del botón radio: $radioSelected');
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineSmall,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: radioSelected,
              onChanged: (value) {
                setState(() {
                  radioSelected = value!;
                  print('Selección del botón radio: $radioSelected');
                });
              },
            ),
          ),
        ),
      ],
    );
  }

  //termina
  //nuevohoy
  Row entradasCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isCheked1,
            onChanged: (value) {
              setState(() {
                isCheked1 = value!;
              });
            },
          ),
        ),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isCheked2,
            onChanged: (value) {
              setState(() {
                isCheked2 = value!;
              });
            },
          ),
        ),
        Text(
          'SmartPhone',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isCheked3,
            onChanged: (value) {
              setState(() {
                isCheked3 = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
