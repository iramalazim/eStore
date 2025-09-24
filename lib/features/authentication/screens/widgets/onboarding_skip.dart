import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: EStoreDeviceUtils.getAppBarHeight(),
      right: EStoreSizes.defaultSpace,
      child: TextButton(onPressed: () {}, child: const Text("Skip")),
    );
  }
}
