
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTermsAndConditionCheckBox extends StatelessWidget {
  const TTermsAndConditionCheckBox({
    super.key
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Row(children: [
      SizedBox(
        width: 24,height: 24,
        child: Checkbox(value:true, onChanged: (value) {},)),
        const SizedBox(width: TSizes.spaceBwItems,),
        Text.rich(TextSpan(
          children: [
            TextSpan(
              text: '${TTexts.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall
            ),
            TextSpan(text: TTexts.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark? TColors.white:TColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor:dark? TColors.white:TColors.primaryColor, 
            )),
             TextSpan(
              text: ' ${TTexts.and} ',
              style: Theme.of(context).textTheme.bodySmall
            ),
             TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark? TColors.white:TColors.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor:dark? TColors.white:TColors.primaryColor, 
            )),

          ]
        ))
    ],);
  }
}
