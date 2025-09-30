import 'package:e_store/common/widgets/terms_and_condition_checkbox.dart';
import 'package:e_store/features/authentication/screens/signup/verify_email.dart';
import 'package:e_store/utils/constants/icon_data.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: EStroreTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: EStoreSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: EStroreTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //User name
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: EStroreTexts.username,
            ),
          ),
          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(EStoreIconData.email),
              labelText: EStroreTexts.email,
            ),
          ),
          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //Phone Number
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: EStroreTexts.phoneNo,
            ),
          ),
          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(EStoreIconData.password),
              labelText: EStroreTexts.password,
              suffixIcon: Icon(EStoreIconData.eyePassword),
            ),
          ),
          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //Terms and conditions
          const TermsAndConditionCheckbox(),

          const SizedBox(height: EStoreSizes.spaceBtwInputFields),
          //Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(EStroreTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
