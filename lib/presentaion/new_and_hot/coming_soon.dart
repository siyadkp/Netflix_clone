import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/home/widget/costum_button.dart';
import 'package:netflix_ui/presentaion/widget/video_widget.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            children: const [
              Text(
                'FEB',
                style: TextStyle(fontSize: 16, color: kGrayColor),
              ),
              Text(
                '11',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 60,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              KHeight20,
              const VideoWidget(),
              kHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TALLGIRL2',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -6),
                  ),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications_outlined,
                        title: 'Remind me',
                        textSize: 10,
                        iconSize: 20,
                      ),
                      kwidth,
                      CustomButtonWidget(
                        icon: Icons.info_outline,
                        title: 'Info',
                        iconSize: 20,
                        textSize: 12,
                      ),
                    ],
                  )
                ],
              ),
              const Text('Coming on Friday'),
              kHeight,
              const Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Text(
                  'dgfszsdgsdfgsedgsiuyfiouhiuhfiuhsfiuhwiufhiuhwsiufhkjsnbkjfjkbfjkkjsnfjknkjf\nfhfghrtyhesayqaewtyiufygasiyudgyufweg\nljfhiuhsauighh',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }
}
