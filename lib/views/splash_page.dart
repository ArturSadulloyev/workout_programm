import 'package:flutter/material.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class Splash extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const Splash({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height / 6),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.w700, height: 5),
          text: title,
          children: [
            TextSpan(
              style: const TextStyle(
                  height: 1, fontSize: 22, fontWeight: FontWeight.w400),
              text: subTitle,
            ),
          ],
        ),
      ),
    );
  }
}
