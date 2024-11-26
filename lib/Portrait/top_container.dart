import 'package:f18_perfect_responsivness/Portrait/1st_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Portrait/3rd_row_topContainer.dart';
import 'package:f18_perfect_responsivness/Portrait/4th_row_topContaine.dart';
import 'package:f18_perfect_responsivness/Portrait/newProductsContainer.dart';
import 'package:f18_perfect_responsivness/Portrait/top_stack_headphone.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 770,
      width: 1200,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(
            flex: 10,
          ),
          Flexible(flex: 25, child: FirstRowContainer()),
          Spacer(flex: 20),
          Flexible(flex: 200, child: FittedBox(child: TopStackContainer())),
          Spacer(flex: 5),
          Flexible(flex: 50, child: ThirdRowCOntainer()),
          Spacer(
            flex: 20,
          ),
          Flexible(flex: 30, child: FourthRowContainer()),
          Spacer(
            flex: 30,
          ),
          Flexible(flex: 180, child: NewProductsContainer())
        ],
      ),
    );
  }
}
