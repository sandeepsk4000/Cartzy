import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAmountSection
 extends StatelessWidget {
  const TBillingAmountSection
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Sub total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
                Text('\u{20B9}${20000}',style: Theme.of(context).textTheme.labelMedium,),
          ],
        )  ,
        const SizedBox(height: TSizes.spaceBwItems/2,) ,
        //Shipping Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
                Text('\u{20B9}${40}',style: Theme.of(context).textTheme.labelMedium,),
          ],
        ) ,
        const SizedBox(height: TSizes.spaceBwItems/2,),
        //Order Total
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                Text('Order total', style: Theme.of(context).textTheme.bodyMedium,),
                Text('\u{20B9}${20040}',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ), 
     
      ],
    );
  }
}