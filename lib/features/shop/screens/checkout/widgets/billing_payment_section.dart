import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return  Column(
      children: [
        //Heading
        TSectionHeading(title: 'Payment Method',
        showActionButton: true,
         buttonTitle: 'Change',
        onPressed: (){},),
        const SizedBox(height:TSizes.spaceBwItems/2),
        Row(
          children: [
            TCircularContainer(
              width: 60,
              height: 60,
              backgroungColor: dark? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.payStack ),fit: BoxFit.contain, ),

            ),const SizedBox(width: TSizes.spaceBwItems/2,),
            Text('PayStack',style: Theme.of(context).textTheme.bodyLarge,)
          ],)

         
      ],
    );
  }
}