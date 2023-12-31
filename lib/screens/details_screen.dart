import 'package:flutter/material.dart';
// ignore: unused_import

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
          delegate: SliverChildListDelegate([_PosterAndTitle()]),

          //     delegate: SliverChildBuilderDelegate(
          //   (context, index) => _PosterAndTitle(),
          // )
        )
      ]),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/200x300"),
              height: 150,
            )),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "movie.title",
              style: textTheme.headlineSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              "movie.originalTitle",
              style: textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star_outline,
                  size: 15,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "movie.voteAverage",
                  style: textTheme.bodySmall,
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}
