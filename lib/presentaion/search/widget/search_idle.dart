import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constant.dart';
import 'package:netflix_ui/presentaion/search/search.dart';
import 'package:netflix_ui/presentaion/search/widget/Searh_Result.dart';

class SerchBarWidget extends StatelessWidget {
  const SerchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            kHeight,
            Expanded(
                child: // ScreenSearch()
                    ScreenSearch()),
          ],
        ),
      )),
    );
  }
}
