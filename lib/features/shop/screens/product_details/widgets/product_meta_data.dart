import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_circular_image.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_brand_title_text_with_verified)icon.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/t_product_price_text.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/enums.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & sale price
        Row(
          children: [
            /// Sale Tag
            TCircularContainer(
              radius: TSizes.sm,
              backgroungColor: TColors.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBwItems,
            ),

            /// Price
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
            const TProductPriceText(
              price: '5000',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBwItems / 1.5,
        ),

        /// Title
        const TProductTitleText(
          title: 'Nike Air Max Shoe',
        ),
        const SizedBox(
          height: TSizes.spaceBwItems / 1.5,
        ),

        /// Stock Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(
              width: TSizes.spaceBwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        const SizedBox(
          height: TSizes.spaceBwItems / 1.5,
        ),

        /// Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              overLayColor: dark ? TColors.white : TColors.black,
              width: 32,
              height: 32,
              fit: BoxFit.contain,
            ),
            const TBrandTitleWithVerification(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        ),
         const SizedBox(height: TSizes.spaceBwItems,)
      ],
    );
  }
}
