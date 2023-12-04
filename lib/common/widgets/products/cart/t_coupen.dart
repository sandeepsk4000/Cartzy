

import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCoupenCode extends StatelessWidget {
  const TCoupenCode({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return TCircularContainer(
     showBorder: true,
     backgroungColor: dark ? TColors.dark: TColors.white,
     padding: const EdgeInsets.only(top: TSizes.sm,bottom: TSizes.sm,left: TSizes.md,right: TSizes.sm),
     child: Row(
       children: [
         Flexible(
           child: TextFormField(
             decoration: const InputDecoration(
               hintText: 'Have a promo code? Enter here',
               focusedBorder: InputBorder.none,
               border: InputBorder.none,
               errorBorder: InputBorder.none,
               disabledBorder: InputBorder.none
             ),
           ),
         ),
         //Button
         SizedBox(
           width: 80,
           child: ElevatedButton(onPressed: (){},
           style: ElevatedButton.styleFrom(
             foregroundColor: dark? TColors.white.withOpacity(0.5):TColors.dark.withOpacity(0.5),
             backgroundColor: Colors.grey.withOpacity(0.2),
             side: BorderSide(color: Colors.grey.withOpacity(0.1)),
           ),
            child: const Text('Apply')))
       ],
     ),
    );
  }
}
