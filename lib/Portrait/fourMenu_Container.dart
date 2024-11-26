import 'package:flutter/material.dart';

class FourMenuConatiners extends StatelessWidget {
  const FourMenuConatiners({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.transparent,
          height: 30,
          width: 30,
        ),
        Positioned(
          right: 13,
          child: Container(
            color: Colors.black,
            height: 10,
            width: 10,
          ),
        ),
        Positioned(
          right: 13,
          top: 13,
          child: Container(
            color: Colors.black,
            height: 10,
            width: 10,
          ),
        ),
        Positioned(
          child: Container(
            color: const Color.fromARGB(255, 134, 13, 13),
            height: 10,
            width: 10,
          ),
        ),
        Positioned(
          top: 13,
          child: Container(
            color: Colors.black,
            height: 10,
            width: 10,
          ),
        ),
      ],
    );
  }
}
// --------------------Third Row Menu

class ThirdRowMenu extends StatelessWidget {
  const ThirdRowMenu({super.key});
  Widget redMenuBox() {
    return Container(
      width: 25,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Colors.white)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 62, 0, 0),
                Color.fromARGB(255, 152, 38, 38),
                Color.fromARGB(255, 221, 77, 77)
              ],
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 7,
            ),
            Flexible(fit: FlexFit.loose, child: FittedBox(child: redMenuBox())),
            const Spacer(
              flex: 2,
            ),
            Flexible(child: FittedBox(child: redMenuBox())),
            const Spacer(
              flex: 2,
            ),
            Flexible(child: FittedBox(child: redMenuBox())),
            const Spacer(
              flex: 7,
            ),
          ],
        ),
      ),
    );
  }
}
