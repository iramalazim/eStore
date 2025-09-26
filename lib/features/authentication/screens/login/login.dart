import 'package:e_store/common/styles/spacing_styles.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/icon_data.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EStoreDeviceUtils.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EStoreSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 100,
                    image: AssetImage(
                      dark
                          ? EStroreImages.darkAppLogo
                          : EStroreImages.lightAppLogo,
                    ),
                  ),
                  Text(
                    EStroreTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: EStoreSizes.sm),
                  Text(
                    EStroreTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              //Login form
              Form(
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
                      const SizedBox(
                        height: EStoreSizes.spaceBtwInputFields / 2,
                      ),

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
                            onPressed: () {},
                            child: Text(EStroreTexts.forgotPassword),
                          ),
                        ],
                      ),
                      const SizedBox(height: EStoreSizes.spaceBtwSections),

                      //SignIn Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(EStroreTexts.signIn),
                        ),
                      ),

                      const SizedBox(height: EStoreSizes.spaceBtwItems),

                      //Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(EStroreTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? EStoreColors.darkGrey : EStoreColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    EStroreTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? EStoreColors.darkGrey : EStoreColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  ),
                ],
              ),
              //Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: EStoreColors.grey),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Image(
                        width: EStoreSizes.iconMd,
                        height: EStoreSizes.iconMd,
                        image: AssetImage(EStroreImages.google),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
