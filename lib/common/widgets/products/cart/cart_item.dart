

import 'package:cartzy_ecommerce/common/widgets/image/t_circular_image.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_brand_title_text_with_verified)icon.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Row(
      children: [
        TCircularImage(image: TImages.productImage1,fit: BoxFit.contain,
        width: 60,
        height: 60,
        backGroundColor: dark?TColors.darkerGrey:TColors.light,),
        const SizedBox(width: TSizes.spaceBwItems,),
        /// Title, price & size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TBrandTitleWithVerification(title: 'Nike'),
            const Flexible(child:  TProductTitleText(title: 'Orange Nike AirMax Shoe',maxlines: 1,)),
            ///Attributes
            Text.rich(TextSpan(children: [
              TextSpan(text: 'Color',style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
               TextSpan(text: 'Size',style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodyLarge),

            ]))


          ],
        )
      ],
    );
  }
}
