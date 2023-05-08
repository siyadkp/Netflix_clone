import 'package:flutter/material.dart';
import 'package:netflix_ui/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: KwhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/12/airlift-movie-poster-4.jpg"),
                    ),
                    videoActions(
                      icon: Icons.emoji_emotions,
                      title: 'LoL',
                    ),
                    videoActions(icon: Icons.add, title: 'My List'),
                    videoActions(icon: Icons.share, title: 'Share'),
                    videoActions(icon: Icons.play_arrow, title: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class videoActions extends StatelessWidget {
  final IconData icon;
  final String title;

  const videoActions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(color: KwhiteColor, fontSize: 15),
          )
        ],
      ),
    );
  }
}
