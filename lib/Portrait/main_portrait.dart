import 'package:f18_perfect_responsivness/Portrait/bottom_stack.dart';
import 'package:f18_perfect_responsivness/Portrait/top_container.dart';
import 'package:flutter/material.dart';

class MainPortrait extends StatelessWidget {
  const MainPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 100,
          child: TopContainer(),
        ),
        Flexible(flex: 30, child: BottomStack())
      ],
    );
  }
}
