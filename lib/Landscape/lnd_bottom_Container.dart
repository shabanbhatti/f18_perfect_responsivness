import 'package:flutter/material.dart';

class LndBottomContainer extends StatelessWidget {
  LndBottomContainer(
      {super.key,
      required this.image,
      required this.name,
      required this.price});
  var image = '';
  var name = '';
  var price = '';
// ----------------------Func portion------------
  Widget imageSrc({required imageSrc}) {
    return Image.asset(imageSrc);
  }

// ------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(
              flex: 10,
            ),
            Flexible(
              flex: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Flexible(
                    flex: 50,
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: imageSrc(imageSrc: image),
                    ),
                  ),
                  Flexible(
                    flex: 50,
                    child: SizedBox(
                      height: 20,
                      width: 150,
                      child: imageSrc(imageSrc: 'assets/images/shadow.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 10,
            ),
            Flexible(
              flex: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 50,
                    child: FittedBox(
                        child: Text(
                      name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )),
                  ),
                  Flexible(
                    flex: 50,
                    child: FittedBox(
                        child: Text(price,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white))),
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 140,
            ),
            Flexible(
              flex: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: const Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
