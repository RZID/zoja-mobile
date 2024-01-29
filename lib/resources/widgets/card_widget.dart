import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            // clipBehavior is necessary because, without it, the InkWell's animation
            // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
            // This comes with a small performance cost, and you should not set [clipBehavior]
            // unless you need it.
            child: InkWell(
      splashColor: Colors.blue.withAlpha(30),
      onTap: () {
        debugPrint('Card tapped.');
      },
      child: const SizedBox(
        width: 300,
        height: 100,
        child: Text('A card that can be tapped'),
      ),
    )));
  }
}
