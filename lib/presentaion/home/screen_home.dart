import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/home/widget/number_card.dart';
import 'package:netflix_ui/presentaion/splash.dart/screen_splash.dart';
import 'package:netflix_ui/presentaion/widget/title.dart';
import 'widget/background_card.dart';
import 'widget/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(children: [
            ListView(
              children: [
                const BackgroundCard(),
                kHeight,
                MainTitleCard(
                  title: 'Released in the past year',
                  length: releasedPageData!.results!.length,
                  data: releasedPageData,
                ),
                kHeight,
                MainTitleCard(
                  title: 'Trending Now',
                  length: trendingPageData!.results!.length,
                  data: trendingPageData,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(
                      text: 'Top 10 Tv Shows In India Today',
                    ),
                    kHeight,
                    LimitedBox(
                      maxHeight: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                            10, (index) => NumberCard(index: index)),
                      ),
                    )
                  ],
                ),
                MainTitleCard(
                  title: 'Tense Dramas',
                  length: tenseDramasPageData!.results!.length,
                  data: tenseDramasPageData,
                ),
                MainTitleCard(
                  title: 'South Indian Cinema',
                  length: southIndianCinimaPageData!.results!.length,
                  data: southIndianCinimaPageData,
                )
              ],
            ),
            scrollNotifier.value == true
                ? AnimatedContainer(
                    duration: const Duration(microseconds: 1000),
                    width: double.infinity,
                    height: 90,
                    color: Colors.black.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('asset/pngwing.com.png',
                                  width: 60, height: 60),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                color: Colors.white,
                                size: 30,
                              ),
                              kwidth,
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    // borderRadius: kRadius10,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png?20201013161117",
                                        )),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Tv Showes',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Movies',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Categories',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                : const SizedBox()
          ]),
        );
      },
    )));
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
      ),
      label: const Text(
        'Play',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(kWhiteColor)),
    );
  }
}
