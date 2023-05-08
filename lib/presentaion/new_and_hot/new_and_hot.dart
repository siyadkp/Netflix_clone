import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/new_and_hot/coming_soon.dart';
import 'package:netflix_ui/presentaion/widget/everyones_watching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'New & Hot',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          actions: [
            const Icon(
              Icons.cast,
              color: Colors.white,
              size: 30,
            ),
            kwidth,
            Center(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  // borderRadius: kRadius10,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png?20201013161117",
                      )),
                ),
              ),
            ),
            kwidth
          ],
          bottom: TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.black,
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            tabs: const [
              Tab(
                child: Text("🍿 Coming Soon"),
              ),
              Tab(
                child: Text("👀 Everyone's Watching"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryOneseWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const ComingSoon(),
    );
  }
}

Widget _buildEveryOneseWatching() {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) => const EveryOneseWatching(),
  );
}
