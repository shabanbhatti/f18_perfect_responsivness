import 'package:f18_perfect_responsivness/Landscape/lnd_BottomStack.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_TopContainer.dart';
import 'package:flutter/material.dart';

class MainLandscape extends StatelessWidget {
  const MainLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 100,
          child: LndTopContainer(),
        ),
        Flexible(flex: 30, child: LndBottomStack())
      ],
    );
  }
}
