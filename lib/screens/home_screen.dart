import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Peliculas en cines")),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: const SingleChildScrollView(
            child: Column(
          children: [
            //Tarjetas principales
            CardSwiper(),

            //Slider de peliculas
            MovieSlider()
            //Listado orizontal de peliculas
          ],
        )));
  }
}
