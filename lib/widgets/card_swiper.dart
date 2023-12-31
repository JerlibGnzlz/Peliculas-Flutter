import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 0),
      width: double.infinity,
      height: size.height * 0.5,
      // color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "details",
                  arguments: "movie-instance");
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage("http://via.placeholder.com/300x400"),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
