import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_ui/core/colors/colors.dart';
import 'package:netflix_ui/presentaion/fast_laugh/fast_laugh.dart';

import 'presentaion/main_page/widget/screen_main.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.black),
            primaryColor: Colors.blue,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
            scaffoldBackgroundColor: backgroundColor,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white)),
            fontFamily: GoogleFonts.montserrat().fontFamily),
        home: MainPage());
  }
}
