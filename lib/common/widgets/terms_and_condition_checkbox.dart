import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EStoreDeviceUtils.isDarkMode(context);
    return Row(
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
      );
  }
}