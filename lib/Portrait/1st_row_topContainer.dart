import 'package:f18_perfect_responsivness/Portrait/fourMenu_Container.dart';
import 'package:flutter/material.dart';

class FirstRowContainer extends StatelessWidget {
  const FirstRowContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(
          flex: 10,
        ),
        Flexible(flex: 70, child: FourMenuConatiners()),
        Spacer(
          flex: 530,
        ),
        Flexible(
            flex: 50,
            child: FittedBox(
              child: Icon(
                Icons.search,
                size: 40,
              ),
            )),
        Spacer(
          flex: 7,
        ),
        Flexible(
            flex: 50,
            child: FittedBox(
              child: Icon(
                Icons.person,
                size: 40,
              ),
            )),
      ],
    );
  }
}
