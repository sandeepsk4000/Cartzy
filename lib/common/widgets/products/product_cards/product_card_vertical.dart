import 'package:cartzy_ecommerce/common/styles/shadows.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_rounded_image.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_brand_title_text_with_verified)icon.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_product_price_text.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/product_details.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: ()=>Get.to(()=>const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? Colors.grey.shade600 : TColors.white),
        child: Column(
          children: [
            ///- Thumbnail,Wishlist Button,Discount Tag
            TCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroungColor: dark ? TColors.dark : TColors.white,
              child: Stack(
                children: [
                  ///-THumbnail Image
                  const TRoundedImage(
                    height: 180,
                    imageUrl: TImages.productImage1,
             
                    borderRadius: TSizes.borderRadiusMd,
                    fit: BoxFit.contain,
                    applyImageRadius: true,
                  ),
    
                  ///-Sale Tag
                  Positioned(
                    top: 12,
                    child: TCircularContainer(
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
                  ),
    
                  ///--Favourite icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
    
            ///--Product Details
            const Padding(
              padding:  EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Nike Air-Max Orange',
                    smallSize: true,
                  ),
                   SizedBox(
                    height: TSizes.spaceBwItems / 2,
                  ),
                  TBrandTitleWithVerification(title: 'Nike'),
                 
                
                ],
              ),
            ),
            const Spacer(),
             ///-Button/pricing
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: TSizes.sm
                        ),
                        child: 
                         TProductPriceText(price: '1200'),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                TSizes.cardRadiusMd,
                              ),
                              topRight:
                                  Radius.circular(TSizes.productImageRadius),
                            )),
                        child: const SizedBox(
                          height: TSizes.iconLg * 1.2,
                          width: TSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
