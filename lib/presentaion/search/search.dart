import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/api/api_uri.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/splash.dart/screen_splash.dart';
import 'package:netflix_ui/presentaion/widget/title.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const TitleWidget(text: 'Top Searches'),
      Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => TopSearchItem(index: index),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: downloadsPageData!.results!.length))
    ]);
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({super.key, required this.index});
  final int index;
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
              fit: BoxFit.cover,
              image: NetworkImage(
                  baseUri + downloadsPageData!.results![index].backdropPath!),
            ),
          ),
        ),
        kwidth,
        Expanded(
            child: SizedBox(
          height: 23,
          child: Text(
            downloadsPageData!.results![index].title!,
            style: const TextStyle(
              color: kWhiteColor,
            ),
          ),
        )),
        const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: kWhiteColor,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kWhiteColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
