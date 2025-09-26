import 'package:e_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EStoreDeviceUtils.isDarkMode(context);
    return Positioned(
      right: EStoreSizes.defaultSpace,
      bottom: EStoreDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? EStoreColors.primary : EStoreColors.black,
        ),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
