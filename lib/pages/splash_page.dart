import 'package:flutter/material.dart';
import 'package:workout_programm/services/constants/images.dart';
import 'package:workout_programm/services/constants/strings.dart';
import 'package:workout_programm/views/first_page_bottom_circle.dart';
import 'package:workout_programm/views/splash_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  PageController controller = PageController();
  int currentIndex = 0;
  final List<String> images = [
    CustomImages.welcomeFirstPagePhoto,
    CustomImages.welcomeSecondPagePhoto,
    CustomImages.welcomeThirdPagePhoto,
  ];
  final List<String> title = [
    CustomStrings.workoutFromHome,
    CustomStrings.trackYourActivity,
    CustomStrings.achieveYourGoals,
  ];
  final List<String> subTitle = [
    CustomStrings.subtitleWorkoutFromHome,
    CustomStrings.subtitleTrackYourActivity,
    CustomStrings.subtitleAchieveYourGoals
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
            controller: controller,
            children: [
              for (int i = 0; i < 3; i++)
                Splash(image: images[i], title: title[i], subTitle: subTitle[i])
            ],
          ),
          Positioned(
            bottom: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Row(
                    children: [
                      Circle(
                        currentIndex: currentIndex,
                        i: i,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
