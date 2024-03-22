import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_scroll_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}


class _ImageScreenState extends State<ImageScreen> {
  
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
          title: const Text('Imagenes'),
        ),
        body: ListView(
          children: [
            cardImage1(),
            imageFade(),
          ],
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

  Card cardImage1() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/img/f1.png'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'F1',
                style: AppTheme.lightTheme.textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox image2(){
    return SizedBox(
      height: 200.0,
      width: 200.0,
      child: Image.network('https://i.pinimg.com/564x/b7/4e/3a/b74e3aaeaf708661dc60796ffa678139.jpg'),
    );
  }
  Stack imageFade(){
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center( 
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://i.pinimg.com/564x/b7/4e/3a/b74e3aaeaf708661dc60796ffa678139.jpg'),
        ),
      ],
    );
  }
}
