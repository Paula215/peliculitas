import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwipper extends StatelessWidget {
  const CardSwipper({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.8,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width,
        itemHeight: size.height * 0.6,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(
                    'https://decine21.com/img/upload/obras/mi-navidad-con-bob-44790/mi-navidad-con-bob-44790-c.jpg'),
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                left: 20,
                height: 250,
                width: size.width * 0.9,
                child: Container(
                  color: const Color.fromARGB(120, 0, 0, 0),
                  width: double.infinity,
                  height: 150,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
