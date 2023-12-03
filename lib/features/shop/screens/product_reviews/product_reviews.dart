import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/user_review_card.dart';


class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: const TAppBar(
        title: Text('Reviews and Ratings'),
        showBackArrow: true,
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and reviews are verified and are from people who use the same type of device that you use .'),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),

              ///Overall Product Rating
              Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        '4.7',
                        style: Theme.of(context).textTheme.displayLarge,
                      )),
                  const Expanded(
                    flex: 7,
                    child: TOverAllProductRating(),
                  )
                ],
              ),

              ///-rating bar
              const TRatingBarIndicator(rating: 4.5,),
              //Overall Rating count
              Text("12,777",style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              // User Review List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard()

            ],
          ),
        ),
      ),
    );
  }
}
