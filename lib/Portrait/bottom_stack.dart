import 'package:f18_perfect_responsivness/Portrait/bottom_container.dart';
import 'package:flutter/material.dart';

class BottomStack extends StatelessWidget {
  const BottomStack({super.key});
// -------------Func portion---------------
  Widget specialForYou_And_SeeAllText({required var text, required var color}) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }

// ---------------------------------------
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          color: Colors.black,
          height: 500,
        ),
        Container(
          color: Colors.white,
          width: 150,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topRight: Radius.circular(90))),
          child: Center(
            child: Column(
              children: [
                const Spacer(
                  flex: 10,
                ),
                Flexible(
                  flex: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: FittedBox(
                          child: specialForYou_And_SeeAllText(
                              text: 'Special for you', color: Colors.white),
                        ),
                      ),
                      Flexible(
                        child: FittedBox(
                          child: specialForYou_And_SeeAllText(
                              text: 'See All',
                              color: const Color.fromARGB(255, 170, 39, 30)),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                const Flexible(
                    flex: 40, child: FittedBox(child: BottomContainer()))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
