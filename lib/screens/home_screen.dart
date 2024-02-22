import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: <Widget>[
              ListTile(
                title: Text(
                  'Entradas',
                  style: AppTheme.lightTheme.textTheme.headlineLarge,
                  ),
                subtitle: Text(
                  'Introduciendo valores',
                  style: AppTheme.lightTheme.textTheme.bodySmall,
                  ),
                leading: const Icon(Icons.input_rounded),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Listview.builder',
                  style: AppTheme.lightTheme.textTheme.headlineLarge
                  ),
                subtitle: Text('Lista con scroll infinito',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
                leading: const Icon(Icons.format_list_bulleted_rounded),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Notificaciones',
                  style: AppTheme.lightTheme.textTheme.headlineLarge
                  ),
                subtitle: Text('Mostrar notis',
                style: AppTheme.lightTheme.textTheme.bodySmall,
                ),
                leading: const Icon(Icons.notification_important_rounded),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
              ),
            ],
        ),  
    );
  }
}