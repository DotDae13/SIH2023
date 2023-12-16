import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:sih2023/src/constants/colors.dart';
import 'package:sih2023/src/constants/image_strings.dart';
import 'package:sih2023/src/constants/sizes.dart';
import 'package:sih2023/src/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
              pages: [
                Container(
                  padding: const EdgeInsets.all(tDefaultSize),
                    color: tOnBoardingPage1Color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: const AssetImage(tOnBoardingImage1), height: size.height * 0.7,),
                        Column(
                            children: [
                              Text(tOnBoardingTitle1, style: Theme.of(context).textTheme.headline3,),
                              const Text(tOnBoardingSubTitle1, textAlign: TextAlign.center,),
                            ],
                        ),
                          Text(tOnBoardingCounter1, style: Theme.of(context).textTheme.headline6,),
                        const SizedBox(height: 50.0,)
                      ],
                    ),
                ),
                Container(color: tOnBoardingPage2Color),
                Container(color: tOnBoardingPage3Color),
              ],
          ),
        ],
      ),
    );
  }
}
