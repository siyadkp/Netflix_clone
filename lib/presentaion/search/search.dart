import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/widget/title.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TitleWidget(text: 'Top Searches'),
      Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItem(),
              separatorBuilder: (context, index) => KHeight20,
              itemCount: 10))
    ]);
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key});
  final imageUrl =
      "https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/12/airlift-movie-poster-4.jpg";
  @override
  Widget build(BuildContext context) {
    final sreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: sreenWidth * 0.35,
          height: 70,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        kwidth,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(
            color: KwhiteColor,
          ),
        )),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: KwhiteColor,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_fill,
                color: KwhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
