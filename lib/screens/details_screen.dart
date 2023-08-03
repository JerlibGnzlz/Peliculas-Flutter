import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: cambiar luego por una instancia
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "no-movie";

    return Scaffold(
      body: CustomScrollView(slivers: [
        const SliverAppBar(
          backgroundColor: Colors.indigo,
          expandedHeight: 200,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding: EdgeInsets.all(0),
            title: Text("movie.title"),
            background: FadeInImage(
              placeholder: AssetImage("assets/loading.gif"),
              image: NetworkImage("https://via.placeholder.com/500x300"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) => const Text(""),
        ))
      ]),
    );
  }
}

// class _CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return SliverAppBar(
//       backgroundColor: Colors.indigo,
//       // expandedHeight: 200,
//       // title: const Text('sliver'),
//     );
//   }
// }
