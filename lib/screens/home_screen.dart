import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const <Widget>[
              ListTile(
                title: Text('Jeny sad'),
                subtitle: Text('Huamantla - 14/feb/2024'),
                leading: Icon(Icons.casino),
                trailing: Icon(Icons.arrow_right_alt_rounded),
              ),
              Divider(),
              ListTile(
                title: Text('Jeny feliz'),
                subtitle: Text('Huamantla - 90/feb/2024'),
                leading: Icon(Icons.price_check_sharp),
                trailing: Icon(Icons.arrow_right_alt_rounded),
              ),
              Divider(),
              ListTile(
                title: Text('Jeny confundida'),
                subtitle: Text('Huamantla - 99/feb/2024'),
                leading: Icon(Icons.price_change_rounded),
                trailing: Icon(Icons.arrow_right_alt_rounded),
              ),
            ],
        ),  
    );
  }
}