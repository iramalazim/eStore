import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EStoreSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(image),
                width: EStoreHelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              //Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              //Subtitle
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: EStoreSizes.spaceBtwItems),
              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(EStroreTexts.continueButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
