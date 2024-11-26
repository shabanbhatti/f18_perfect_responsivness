import 'package:f18_perfect_responsivness/Landscape/lnd_1st_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_3rd_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_4th_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_topStack_container.dart';
import 'package:f18_perfect_responsivness/Landscape/lnd_newProduct_container.dart';

import 'package:f18_perfect_responsivness/Portrait/3rd_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Portrait/4th_row_topContaine.dart';
import 'package:f18_perfect_responsivness/Portrait/newProductsContainer.dart';
import 'package:f18_perfect_responsivness/Portrait/top_stack_headphone.dart';
import 'package:flutter/material.dart';

class LndTopContainer extends StatelessWidget {
  const LndTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 770,
      width: 2200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 10,
          ),
          Flexible(flex: 50, child: LndFirstRowContainer()),
          const Spacer(flex: 50),
          Flexible(
            flex: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 25,
                ),
                Flexible(
                  flex: 70,
                  child: FittedBox(
                    child: LndTopStackContainer(
                      name: 'Headphone X1',
                      imageName: 'assets/images/headphone.png',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 20,
                ),
                Flexible(
                  flex: 70,
                  child: FittedBox(
                    child: LndTopStackContainer(
                      name: 'Headphone ZX',
                      imageName: 'assets/images/bluehead.png',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 25,
                ),
              ],
            ),
          ),
          const Spacer(flex: 5),
          const Flexible(flex: 100, child: LndThirdRowCOntainer()),
          const Spacer(
            flex: 20,
          ),
          const Flexible(flex: 30, child: LndFourthRowContainer()),
          const Spacer(
            flex: 30,
          ),
          const Flexible(flex: 180, child: LndNewProductsContainer())
        ],
      ),
    );
  }
}
