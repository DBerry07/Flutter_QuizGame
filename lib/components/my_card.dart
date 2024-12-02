
import 'package:flutter/cupertino.dart';

import '../constants.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: kContainerColour),
      child: child,
    );
  }
}
