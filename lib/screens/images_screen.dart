import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
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
        ));
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
