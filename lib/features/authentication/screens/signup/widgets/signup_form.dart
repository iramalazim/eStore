import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/icon_data.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EStoreDeviceUtils.isDarkMode(context);
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
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(
                  value: true, 
                  onChanged: (value){}
                  )
              ),
              const SizedBox(width: EStoreSizes.spaceBtwItems,),
              Expanded(
                child: Text.rich(TextSpan(
                  children: [
                    TextSpan( text: '${EStroreTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan( text: '${EStroreTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EStoreColors.textWhite : EStoreColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EStoreColors.textWhite : EStoreColors.primary,
                    )),
                    TextSpan( text: '${EStroreTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan( text: EStroreTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EStoreColors.textWhite : EStoreColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EStoreColors.textWhite : EStoreColors.primary,
                    )),
                  ]
                  ),
                ),
              )
            ],
            ),
            const SizedBox(height: EStoreSizes.spaceBtwInputFields),
            //Sign Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(EStroreTexts.createAccount),
              ),
            ),
        ],
      ),
    );
  }
}