import 'package:e_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_store/utils/constants/icon_data.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(EStoreSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //headings
            Text(
              EStroreTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: EStoreSizes.spaceBtwSections),
            Image(
              image: AssetImage(EStroreImages.forgotPassword),
              width: EStoreHelperFunctions.screenWidth() * 0.8,
            ),
            const SizedBox(height: EStoreSizes.spaceBtwSections),
            Text(
              EStroreTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: EStoreSizes.spaceBtwSections),
            //Text field
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(EStoreIconData.email),
                label: Text(EStroreTexts.email),
              ),
            ),
            const SizedBox(height: EStoreSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: Text(EStroreTexts.continueButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
