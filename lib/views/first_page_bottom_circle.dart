import 'package:flutter/material.dart';

import '../services/constants/colors.dart';

class Circle extends StatelessWidget {
  final int currentIndex;
  final int i;
  const Circle({super.key, required this.currentIndex, required this.i});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 8,
      backgroundColor: currentIndex == i
          ? CustomColors.mainColor
          : CustomColors.grey,
    );
  }
}
