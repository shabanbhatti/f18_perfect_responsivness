import 'package:f18_perfect_responsivness/Portrait/fourMenu_Container.dart';
import 'package:flutter/material.dart';

class ThirdRowCOntainer extends StatelessWidget {
  const ThirdRowCOntainer({super.key});
// -------------Func portion-------------
  Widget ourProductName() {
    return const Text(
      'Our Products',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

// -------------------------------------Text('Our Products')
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 5,
        ),
        Flexible(flex: 100, child: FittedBox(child: ourProductName())),
        const Spacer(
          flex: 130,
        ),
        const Flexible(flex: 30, child: ThirdRowMenu()),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
