import 'package:flutter/material.dart';
import 'package:practica3/screens/data_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Introducción de valores',
               style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            leading: const Icon(Icons.import_contacts_sharp),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            
            //agreganuevo
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context) {
                return const InputsScreen(); 
              });
              Navigator.push(context,ruta1);
            },
            //acaba lo nuevo
          
          ),

          const Divider(),
          ListTile(
            title: Text(
              'ListView.builder',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Lista con desplazamiento infinito',
               style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            leading: const Icon(Icons.format_list_bulleted),
            trailing: const Icon(Icons.arrow_circle_right_rounded),

             //agreganuevo
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context) {
                return const InfiniteScrollScreen(); 
              });
              Navigator.push(context,ruta2);
            },
            //acaba lo nuevo
          ),
          const Divider(),

          ListTile(
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Mostrar una notificación',
               style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            leading: const Icon(Icons.notifications_active),
            trailing: const Icon(Icons.arrow_circle_right_rounded),

             //agreganuevo
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context) {
                return const NotificationsScreen(); 
              });
              Navigator.push(context,ruta3);
            },
            //acaba lo nuevo
          ),
        ],
      ),
    );
  }
}