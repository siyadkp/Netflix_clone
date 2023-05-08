import 'package:flutter/material.dart';
import 'package:netflix_ui/presentaion/home/screen_home.dart';
import 'package:netflix_ui/presentaion/home/widget/costum_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://media.harrypotterfanzone.com/philosophers-stone-20-years-of-movie-magic-ron-poster.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 15,
          right: 15,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonWidget(icon: Icons.add, title: 'My List'),
                PlayButton(),
                CustomButtonWidget(icon: Icons.info, title: 'Info')
              ],
            ),
          ),
        )
      ],
    );
  }
}
