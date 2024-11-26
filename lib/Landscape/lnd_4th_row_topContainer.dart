import 'package:flutter/material.dart';

class LndFourthRowContainer extends StatelessWidget {
  const LndFourthRowContainer({super.key});

  // --------------Func portion-----------
  Widget choosePreference(
    var preference,
  ) {
    return Container(
      height: 30,
      width: 105,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey.withOpacity(0.5)),
      child: Center(
        child: Text(
          preference,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 71, 71, 71)),
        ),
      ),
    );
  }

  Container allProducts() {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 62, 0, 0),
            Color.fromARGB(255, 152, 38, 38),
            Color.fromARGB(255, 221, 77, 77)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(
        child: Text(
          'All products',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

// ------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 30,
        ),
        Flexible(flex: 20, child: FittedBox(child: allProducts())),
        const Spacer(
          flex: 10,
        ),
        Flexible(
            flex: 20, child: FittedBox(child: choosePreference('Recommended'))),
        const Spacer(
          flex: 10,
        ),
        Flexible(
            flex: 20,
            child: FittedBox(child: choosePreference('New Products'))),
        const Spacer(
          flex: 10,
        ),
        Flexible(
            flex: 20, child: FittedBox(child: choosePreference('60% off'))),
        const Spacer(
          flex: 10,
        ),
        Flexible(flex: 20, child: FittedBox(child: choosePreference('Luxury'))),
        const Spacer(
          flex: 30,
        ),
      ],
    );
  }
}
