import 'package:f18_perfect_responsivness/Landscape/lnd_bottom_Container.dart';
import 'package:f18_perfect_responsivness/Portrait/bottom_container.dart';
import 'package:flutter/material.dart';

class LndBottomStack extends StatelessWidget {
  const LndBottomStack({super.key});
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
                  flex: 30,
                ),
                Flexible(
                  flex: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                          flex: 40,
                          child: FittedBox(
                              child: LndBottomContainer(
                            image: 'assets/images/mouse.png',
                            name: 'Sony Mouse 0.6',
                            price: '4500 rupees',
                          ))),
                      Flexible(
                          flex: 40,
                          child: FittedBox(
                              child: LndBottomContainer(
                            image: 'assets/images/mouse.png',
                            name: 'Samsung Mouse 0.6',
                            price: '18000 rupees',
                          )))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
