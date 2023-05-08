import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/home/widget/costum_button.dart';
import 'package:netflix_ui/presentaion/widget/video_widget.dart';

class EveryOneseWatching extends StatelessWidget {
  const EveryOneseWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Friends',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'dgfszsdgsdfgsedgsiuyfiouhiuhfiuhsfiuhwiufhiuhwsiufhkjsnbkjfjkbfjkkjsnfjknkjf\nfhfghrtyhesayqaewtyiufygasiyudgyufweg\nljfhiuhsauighh',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          kHeight50,
          const VideoWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomButtonWidget(
                  icon: Icons.share,
                  title: 'Share',
                  textSize: 10,
                  iconSize: 27,
                ),
                kwidth,
                CustomButtonWidget(
                  icon: Icons.add,
                  title: 'My List',
                  textSize: 10,
                  iconSize: 29,
                ),
                kwidth,
                CustomButtonWidget(
                  icon: Icons.play_arrow,
                  title: 'Play',
                  textSize: 10,
                  iconSize: 29,
                ),
                kwidth
              ],
            ),
          )
        ],
      ),
    );
  }
}
