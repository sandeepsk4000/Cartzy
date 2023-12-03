import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/product_add_to_cart.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/rating_share_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--Product Image slider
             const TProductImageSlider(),

            ///--product details
            Padding(
                padding: const EdgeInsets.only(
                    right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// - Rating & Share
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ///Rating
                            const TRatingAndShare(),
                            ////// Share Button
                            IconButton(onPressed: (){}, icon: const Icon(Iconsax.share,size: TSizes.iconMd,))
                            
                          ],
                        ),
                        /// - Price, Title,Stock,& Brand
                        const ProductMetaData(),
                        
                        /// - Attributes
                        const ProductAttributes(),
                        /// - Checkout Button
                        const SizedBox(height: TSizes.spaceBtwSections,),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                             child: const Text('Checkout')),
                        ),
                        /// - Description
                        const SizedBox(height: TSizes.spaceBtwSections,),
                        const TSectionHeading(title: 'Description',showActionButton: false,),
                        const SizedBox(height: TSizes.spaceBwItems,),
                        const ReadMoreText('This is a product description for Nike shoe.',
                        trimLines: 2,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Less',
                        moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,
                        ),
                        lessStyle:TextStyle(fontSize: 14,fontWeight: FontWeight.w800) ,),
                        /// - Reviews
                        const Divider(),
                        const SizedBox(height: TSizes.spaceBwItems,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             TSectionHeading(title: 'Reviews(199)',onPressed: (){},showActionButton: false),
                             IconButton(onPressed: ()=>Get.to(()=>const ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3))
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections,),


                        
                      ],
                    ) )
          ],
        ),
      ),
    );
  }
}