import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EStoreDeviceUtils.isDarkMode(context);
    return Positioned(
      bottom: EStoreDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: EStoreSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? EStoreColors.light : EStoreColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
