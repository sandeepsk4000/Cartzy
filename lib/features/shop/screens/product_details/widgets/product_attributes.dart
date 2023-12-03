import 'package:cartzy_ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/t_product_price_text.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        /// -- Selected Attribute Pricing & Descriptiom
        TCircularContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroungColor: dark ? TColors.darkerGrey : TColors.grey,
          showBorder: false,
          child: Column(
            children: [
              ///Title,Price, and Stock Status
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Price :',
                            smallSize: true,
                          ),
                          //actual parice
                          Text(
                            '\u{20B9}${8000}',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBwItems,
                          ),

                          //Sale Price
                          const TProductPriceText(price: '5000')
                        ],
                      ),
                      // stock
                      Row(
                        children: [
                          const TProductTitleText(
                            title: 'Stock',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: TSizes.sm,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const TProductTitleText(
                title:
                    'This is the Description of thr Product and it can go up to 4 lines',
                maxlines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBwItems,),
        ///-Attributes
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false),
            const SizedBox(height: TSizes.spaceBwItems/2,),
            Wrap(
              spacing: 8,
              children: [
            TChoiceChip(text: 'green',selected: true,onSelected: (value) {},),
            TChoiceChip(text: 'blue',selected: false,onSelected: (value) {}),
            TChoiceChip(text: 'yelllo',selected: false,onSelected: (value) {}),
            TChoiceChip(text: 'orange',selected: false,onSelected: (value) {})
              ],
            )
          ],
        ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size',showActionButton: false),
            const SizedBox(height: TSizes.spaceBwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                
            TChoiceChip(text: 'EU 34',selected: true,onSelected: (value) {}),
            TChoiceChip(text: 'EU 36',selected: false,onSelected: (value) {}),
            TChoiceChip(text: 'EU 38',selected: false,onSelected: (value) {}),
            TChoiceChip(text: 'EU 40',selected: false,onSelected: (value) {})],
            )
          ],
        )
      ],
    );
  }
}