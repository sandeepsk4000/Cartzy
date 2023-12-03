import 'package:cartzy_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return  Container(
      padding: const  EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,vertical: TSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color:dark? TColors.darkerGrey:TColors.light,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(TSizes.cardRadiusLg),
        topRight:Radius.circular(TSizes.cardRadiusLg) 
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
          children: [
           const  TCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: TColors.grey,
            width: 40,
            height: 40,
            color: TColors.white,),
            const SizedBox(width: TSizes.spaceBwItems,),
            Text('2',style: Theme.of(context).textTheme.titleSmall,),
            const SizedBox(width: TSizes.spaceBwItems,),
             const  TCircularIcon(
            icon: Iconsax.add,
            backgroundColor: TColors.black,
            width: 40,
            height: 40,
            color: TColors.white,),
          
          ],
        ),
        ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: TColors.black,
          side: const BorderSide(color: TColors.black)
        ), 
        child:  const Text('Add to cart',))
      ],),
    );
  }
}