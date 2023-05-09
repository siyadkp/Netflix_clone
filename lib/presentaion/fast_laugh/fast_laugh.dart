import 'package:flutter/material.dart';
import 'package:netflix_ui/presentaion/fast_laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(7, (index) {
                  return VideoListItem(index: index);
                }))));
  }
}
