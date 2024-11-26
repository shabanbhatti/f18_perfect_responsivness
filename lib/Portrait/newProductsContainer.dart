import 'package:flutter/material.dart';

class NewProductsContainer extends StatelessWidget {
  const NewProductsContainer({super.key});

// ---------------Func Portion-----------------
  Widget newProducts(
      {required var imageAddress,
      required var productName,
      required var price}) {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 2,
            ),
            Flexible(
              flex: 100,
              child: SizedBox(
                height: 105,
                width: 260,
                child: Image.asset(imageAddress),
              ),
            ),
            Flexible(
              flex: 20,
              child: SizedBox(
                height: 30,
                width: 200,
                child: Image.asset('assets/images/shadow.png'),
              ),
            ),
            Flexible(
              flex: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 20,
                  ),
                  Flexible(
                    flex: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: FittedBox(
                              child: Text(
                            productName,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                        Flexible(
                          child: FittedBox(
                              child: Text(price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))),
                        )
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 165,
                  ),
                  Flexible(
                    flex: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Container(
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
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// ----------------------------------------
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(
          flex: 5,
        ),
        Flexible(
          flex: 30,
          child: FittedBox(
            child: newProducts(
                imageAddress: 'assets/images/multipleheadphone.png',
                productName: 'Cables',
                price: '5400 Rupees'),
          ),
        ),
        const Spacer(flex: 5),
        Flexible(
          flex: 30,
          child: FittedBox(
            child: newProducts(
                imageAddress: 'assets/images/usb.png',
                productName: 'USB 12.1',
                price: '300 rupees'),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
