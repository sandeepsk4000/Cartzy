import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(TImages.user1),
                ),
                const SizedBox(
                  width: TSizes.spaceBwItems,
                ),
                Text(
                  "John Doe",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBwItems,
        ),

        ///reviews
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(
              width: TSizes.spaceBwItems,
            ),
            Text(
              '01 NOV, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBwItems,
        ),
        const ReadMoreText(
          'The user interface of the app is quite invitive. I was able to navigate nd make purchases seamlessly. Great job',
          trimLines: 1,
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primaryColor),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primaryColor),
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
        ),
        const SizedBox(
          height: TSizes.spaceBwItems,
        ),

        // Company review
        TCircularContainer(
          backgroungColor: dark ? TColors.darkerGrey : TColors.grey,
          showBorder: false,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cartzy",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02-nov-2023",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBwItems,
                ),
                const ReadMoreText(
                  'The user interface of the app is quite invitive. I was able to navigate nd make purchases seamlessly. Great job',
                  trimLines: 1,
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primaryColor),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primaryColor),
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Show more',
                ),
              ],
            ),
          ),
        ),
       const  SizedBox(height: TSizes.spaceBtwSections)
      ],
    );
  }
}
