import 'package:e_store/features/authentication/screens/widgets/onboarding_dot_navigation.dart';
import 'package:e_store/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:e_store/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:e_store/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            children: [
              OnBoardingPage(
                image: EStroreImages.onBoardingScreenImage1,
                title: EStroreTexts.onBoardingTitle1,
                subTitle: EStroreTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EStroreImages.onBoardingScreenImage2,
                title: EStroreTexts.onBoardingTitle2,
                subTitle: EStroreTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EStroreImages.onBoardingScreenImage3,
                title: EStroreTexts.onBoardingTitle3,
                subTitle: EStroreTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Smooth Page Indicator
          const OnBoardingDotNavigation(),
          //Circular Arrow Right Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
