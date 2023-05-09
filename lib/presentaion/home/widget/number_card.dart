import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/api/api_uri.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/splash.dart/screen_splash.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      baseUri + top10PageData!.results![index].posterPath!,
                    )),
              ),
            ),
          ],
        ),
        Positioned(
          top: 50,
          left: 13,
          child: BorderedText(
              strokeWidth: 10,
              strokeColor: kWhiteColor,
              child: Text(
                "${index + 1}",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              )),
        ),
      ],
    );
  }
}
