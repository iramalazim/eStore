import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(EStoreSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(EStroreImages.verifyEmailImage),
                width: EStoreHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              // Title
              Text(
                EStroreTexts.confirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              Text(
                "helpline@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              // Subtitle
              Text(
                EStroreTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: EStroreImages.accountConfirmedImage,
                      title: EStroreTexts.yourAccountCreatedTitle,
                      subTitle: EStroreTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: Text(EStroreTexts.continueButton),
                ),
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(EStroreTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
