import 'package:flutter/material.dart';
import 'package:netflix_ui/api/api_uri.dart';
import 'package:netflix_ui/api_models/model/pages.dart';
import 'package:netflix_ui/core/constant.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.index,
    required this.data,
  });

  final int index;
  final Pages? data;

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
                  baseUri + data!.results![index].posterPath!,
                )),
          )),
    );
  }
}
