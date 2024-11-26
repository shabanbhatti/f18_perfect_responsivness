import 'package:flutter/material.dart';

class MySearchbar extends StatelessWidget {
  const MySearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 400,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(
            flex: 1,
          ),
          Flexible(
              flex: 50,
              child: FittedBox(
                child: Icon(
                  Icons.search,
                  size: 40,
                ),
              )),
          Flexible(
            flex: 50,
            child: FittedBox(
              child: Text(
                'Search',
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
