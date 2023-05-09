import 'package:flutter/material.dart';
import 'package:netflix_ui/presentaion/downloads/widget/screen_downloads.dart';
import 'package:netflix_ui/presentaion/fast_laugh/fast_laugh.dart';
import 'package:netflix_ui/presentaion/home/screen_home.dart';
import 'package:netflix_ui/presentaion/main_page/widget/bottom_nav.dart';
import 'package:netflix_ui/presentaion/new_and_hot/new_and_hot.dart';
import 'package:netflix_ui/presentaion/search/widget/search_idle.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const SerchBarWidget(),
    const ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, value, child) {
        return Scaffold(
          body: _pages[value],
          bottomNavigationBar: const BottomNavigationWidget(),
        );
      },
    ));
  }
}
