

import 'package:cartzy_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddAndRemove extends StatelessWidget {
  const TProductQuantityWithAddAndRemove({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Row(
      children: [
        const SizedBox(width: 70,),
        //Add  Remove Button
       Row(
        mainAxisSize: MainAxisSize.min,
        children: [
           TCircularIcon(icon: Iconsax.minus,
        width: 32,
        height: 32,
        size: TSizes.md,
        color: dark ? TColors.white:TColors.black,
        backgroundColor: dark? TColors.darkerGrey:TColors.light,),
        const SizedBox(width: TSizes.spaceBwItems,),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        const SizedBox(width: TSizes.spaceBwItems,),
          const  TCircularIcon(icon: Iconsax.add,
        width: 32,
        height: 32,
        size: TSizes.md,
        color: TColors.white,
        backgroundColor: TColors.primaryColor),
        ],
       )

      ],
    );
  }
}