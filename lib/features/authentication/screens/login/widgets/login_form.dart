import 'package:e_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_store/features/authentication/screens/signup/signup.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/icon_data.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: EStoreSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            //Email input
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(EStoreIconData.email),
                labelText: EStroreTexts.email,
              ),
            ),
            const SizedBox(height: EStoreSizes.spaceBtwInputFields),

            //Password input
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(EStoreIconData.password),
                labelText: EStroreTexts.password,
                suffixIcon: Icon(EStoreIconData.eyePassword),
              ),
            ),
            const SizedBox(height: EStoreSizes.spaceBtwInputFields / 2),

            //Remember me and Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(EStroreTexts.rememberMe),
                  ],
                ),
                //Forget password
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: Text(EStroreTexts.forgotPassword),
                ),
              ],
            ),
            const SizedBox(height: EStoreSizes.spaceBtwSections),

            //SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(EStroreTexts.signIn),
              ),
            ),

            const SizedBox(height: EStoreSizes.spaceBtwItems),

            //Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignupScreen()),
                child: Text(EStroreTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
