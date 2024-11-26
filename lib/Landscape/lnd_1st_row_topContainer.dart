import 'package:f18_perfect_responsivness/Landscape/lnd_fourMenu_Container.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_searchBar.dart';
import 'package:f18_perfect_responsivness/Portrait/fourMenu_Container.dart';
import 'package:flutter/material.dart';

class LndFirstRowContainer extends StatelessWidget {
  LndFirstRowContainer({super.key});
  var currentTime = DateTime.now().toLocal().toString();
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(
          flex: 10,
        ),
        Flexible(flex: 100, child: LndFourMenuConatiners()),
        Spacer(
          flex: 320,
        ),
        Flexible(flex: 400, child: MySearchbar()),
        Spacer(
          flex: 320,
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
