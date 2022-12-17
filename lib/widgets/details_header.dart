import 'package:flutter/material.dart';

import '../features/home/presentation/views/widgets/button_play.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.43,
        ),
        ClipRRect(
            child: Image.network(
          'https://laverdadnoticias.com/__export/1655819964975/sites/laverdad/img/2022/06/21/spy_x_family_viral_anya_forger_con_rasgos_biologicos_de_loid_y_yor.jpeg_1899857922.jpeg',
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.35,
          fit: BoxFit.cover,
        )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                    child: Image.network(
                  'https://laverdadnoticias.com/__export/1655819964975/sites/laverdad/img/2022/06/21/spy_x_family_viral_anya_forger_con_rasgos_biologicos_de_loid_y_yor.jpeg_1899857922.jpeg',
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.28,
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              ButtonPlay(
                onTap: () {},
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ],
    );
  }
}
