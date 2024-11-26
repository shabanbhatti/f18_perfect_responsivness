import 'package:f18_perfect_responsivness/Landscape/main_Landscape.dart';
import 'package:f18_perfect_responsivness/Portrait/bottom_stack.dart';
import 'package:f18_perfect_responsivness/Portrait/main_portrait.dart';
import 'package:f18_perfect_responsivness/Portrait/top_container.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? const MainPortrait()
              : const MainLandscape(),
        )),
      ),
    );
  }
}
