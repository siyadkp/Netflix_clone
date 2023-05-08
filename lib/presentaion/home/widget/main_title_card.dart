import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/widget/main_card.dart';
import 'package:netflix_ui/presentaion/widget/title.dart';

class MainTitleCard extends StatelessWidget {
  final title;
  MainTitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(
          text: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => MainCard()),
          ),
        )
      ],
    );
  }
}
