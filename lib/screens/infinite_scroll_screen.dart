import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  int indexNavigation = 0;

  openScreen(index, BuildContext context){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
    switch(index){
      case 0:
      ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
      break;
      case 1:
       ruta = MaterialPageRoute(builder: (context) => const InfiniteScrollScreen());
      break;
      case 2:
      ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
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
        title: const Text('ListView'),
      ),
          body: ListView.builder(
        itemCount: 20, //Elementos en la lista
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Lista $index'),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
        backgroundColor:  const Color.fromARGB(223, 234, 132, 180),
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