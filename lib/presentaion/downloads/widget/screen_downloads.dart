import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/widget/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: AppBarWidget(
                title: 'Downloads',
              )),
          body: ListView(
            children: const [_smartDownloads(), Section2(), Section3()],
          )),
    );
  }
}

class _smartDownloads extends StatelessWidget {
  const _smartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: KwhiteColor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageList = [
      "https://image.tmdb.org/t/p/original/wigZBAmNrIhxp2FNGOROUAeHvdh.jpg",
      "https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/12/airlift-movie-poster-4.jpg",
      "https://cdn.shopify.com/s/files/1/0969/9128/products/1917_-_Sam_Mendes_-_Hollywood_War_Film_Classic_English_Movie_Poster_a12704bd-2b25-4aa7-8c8d-8f40cf467dc7_large.jpg?v=1582781089"
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 60),
          child: Text(
            'Introducing Downloads for you',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: KwhiteColor, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        kHeight,
        const Text(
            "We will download a personalised selection of movies and shows for you,so there's\n always somthing to watch on your\n  devies",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            )),
        kHeight,
        SizedBox(
          width: size.width,
          child: Stack(alignment: Alignment.topCenter, children: [
            CircleAvatar(
              radius: size.width * 0.4,
              backgroundColor: Colors.grey.withOpacity(0.5),
            ),
            DownloadImageWidget(
              imageList: imageList[0],
              margin: const EdgeInsets.only(left: 170, top: 60),
              angle: 20,
              size: Size(size.width * 0.4, size.width * 0.58),
            ),
            DownloadImageWidget(
                imageList: imageList[1],
                margin: const EdgeInsets.only(right: 170, top: 60),
                angle: -20,
                size: Size(size.width * 0.4, size.width * 0.58)),
            DownloadImageWidget(
              imageList: imageList[2],
              radius: 5,
              margin: const EdgeInsets.only(top: 30),
              size: Size(size.width * 0.45, size.width * 0.68),
            ),
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          MaterialButton(
            minWidth: 370,
            height: 48,
            color: ButtblueCorlor,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Text(
              'Set up',
              style: TextStyle(
                  fontSize: 20,
                  color: ButtfontWhiteColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 45,
            color: ButtWhiteColor,
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                fontSize: 20,
                color: ButtfontBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {super.key,
      required this.imageList,
      this.angle = 0,
      required this.margin,
      required this.size,
      this.radius = 0});

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageList))),
        ),
      ),
    );
  }
}
