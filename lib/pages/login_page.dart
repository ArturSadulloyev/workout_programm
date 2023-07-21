import 'package:flutter/material.dart';
import 'package:workout_programm/services/constants/colors.dart';
import 'package:workout_programm/services/constants/images.dart';
import 'package:workout_programm/services/constants/strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(CustomImages.registrationPagePhoto))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              flex: 4,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      CustomStrings.login,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(),
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                    
                        boxShadow: [
                          BoxShadow(
                            color: CustomColors.c212227,
                            spreadRadius: 10,
                            blurRadius: 28,
                          ),
                          BoxShadow(
                            color: CustomColors.c212227,
                            spreadRadius: 20,
                            blurRadius: 28,
                          ),
                        ],
                        color: CustomColors.c212227,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
