import 'package:f18_perfect_responsivness/Portrait/fourMenu_Container.dart';
import 'package:flutter/material.dart';

class LndThirdRowCOntainer extends StatelessWidget {
  const LndThirdRowCOntainer({super.key});
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
      children: [
        const Spacer(
          flex: 50,
        ),
        Flexible(flex: 100, child: FittedBox(child: ourProductName())),
        const Spacer(
          flex: 300,
        ),
        const Flexible(flex: 30, child: ThirdRowMenu()),
        const Spacer(
          flex: 20,
        ),
      ],
    );
  }
}
