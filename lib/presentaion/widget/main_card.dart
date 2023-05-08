import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: kRadius10,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/12/airlift-movie-poster-4.jpg",
                )),
          )),
    );
  }
}
