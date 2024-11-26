import 'package:flutter/material.dart';

class TopStackContainer extends StatelessWidget {
  const TopStackContainer({super.key});
  // ----------own func portionwidget
  Container buyNowContainer() {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 62, 0, 0),
            Color.fromARGB(255, 152, 38, 38),
            Color.fromARGB(255, 221, 77, 77)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(
        child: Text(
          'Buy Now',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Text headphoneName() {
    return const Text(
      'Headphone X1',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Container newProductName() {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 100,
      color: Colors.white.withOpacity(0.2),
      child: const Center(
        child: Text(
          'New Product',
          style: TextStyle(color: Colors.white),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }

  Widget headphoneImage() {
    return SizedBox(
        height: 250,
        width: 180,
        child: Image.asset('assets/images/headphone.png'));
  }

// ----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(30)),
        ),
        headphoneImage(),
        Positioned(left: 200, top: 40, child: newProductName()),
        Positioned(left: 200, top: 90, child: headphoneName()),
        Positioned(left: 200, top: 140, child: buyNowContainer()),
      ],
    );
  }
}
