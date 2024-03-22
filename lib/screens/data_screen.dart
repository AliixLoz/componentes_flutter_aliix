import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';

class DataScreen extends StatefulWidget {
  final InfoData formData;

  const DataScreen({Key? key, required this.formData}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreen();
}

class _DataScreen extends State<DataScreen> {
  int indexNavigation = 0;

  openScreen(index, BuildContext context) {
    MaterialPageRoute ruta =
        MaterialPageRoute(builder: (context) => const HomeScreen());
    switch (index) {
      case 0:
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
        break;
      case 1:
        ruta = MaterialPageRoute(
            builder: (context) => const InfiniteScrollScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(
            builder: (context) => const NotificationsScreen());
        break;
      case 3:
        ruta = MaterialPageRoute(builder: (context) => const ImageScreen());
        break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reporte'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Usuario: ${widget.formData.nombre}',
              style: const  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8), // Agrega un espacio entre los Text widgets
            Text(
              '¿Le gustó Flutter?: ${widget.formData.teGustaFlutter ? 'Sí' : 'No'}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8), // Agrega un espacio entre los Text widgets
            Text(
              'Ranking Flutter: ${widget.formData.rankingFlutter}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8), // Agrega un espacio entre los Text widgets
            Text(
              '¿Qué prefiere?: ${widget.formData.preferenciaDesarrollo}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8), // Agrega un espacio entre los Text widgets
            Text(
              'Imprimir: ${widget.formData.herramientas.join(', ')}',
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 132, 58, 145),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor: Color.fromARGB(223, 69, 66, 67),
        unselectedItemColor: AppTheme.primaryColor,
        selectedItemColor: AppTheme.backColor2,
        unselectedLabelStyle: const TextStyle(color: AppTheme.backColor2),
        onTap: (index) => openScreen(index, context),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.cottage),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notificación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app_rounded),
            label: 'Salida',
          ),
        ],
      ),
    );
  }
}

//Llevar la info de entradas aquí
//Reporte de datos
//Escribe name
