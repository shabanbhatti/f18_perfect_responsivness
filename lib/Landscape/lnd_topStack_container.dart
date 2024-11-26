import 'package:flutter/material.dart';

class LndTopStackContainer extends StatelessWidget {
  LndTopStackContainer(
      {super.key, required this.imageName, required this.name});
  var imageName = '';
  var name = '';
  // ----------own func portionwidget
  Container buyNowContainer() {
    return Container(
      height: 40,
      width: 110,
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

  Text headphoneName({required var nameFun}) {
    return Text(
      nameFun,
      style: const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
    );
  }

  Container newProductName() {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 110,
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

  Widget headphoneImage({required var imageNameFun}) {
    return SizedBox(height: 300, width: 250, child: Image.asset(imageNameFun));
  }

// ----------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 250,
          width: 450,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(30)),
        ),
        headphoneImage(imageNameFun: imageName),
        Positioned(left: 270, top: 60, child: newProductName()),
        Positioned(left: 270, top: 130, child: headphoneName(nameFun: name)),
        Positioned(left: 270, top: 180, child: buyNowContainer()),
      ],
    );
  }
}
