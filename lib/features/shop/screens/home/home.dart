import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cartzy_ecommerce/common/widgets/layout/tgrid_layout.dart';
import 'package:cartzy_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/shop/screens/home/home_appbar.dart';
import 'package:cartzy_ecommerce/features/shop/screens/home/widget/home_categories.dart';
import 'package:cartzy_ecommerce/features/shop/screens/home/widget/promoslider.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
          const  TPrimaryHeaderContainer(
                child: Column(
              children: [
                ///--Appbar
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///--SearchBar
                TSearchContainer(
                  text: 'Search in Store',
                  icon: Iconsax.search_normal,
                  showBackground: true,
                  showBoder: true,
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                ///Categories
                THomeCtegories(),
                SizedBox(height: TSizes.spaceBwItems,)
              ],
            )),

            ///body
            ///--carousal_slider
            Padding(
                padding:const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(children: [
                  ///-Promo Slider
                  const TPromoSlider(
                    banners: [
                      TImages.promoBnner1,
                      TImages.promoBnner2,
                      TImages.promoBnner6,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  ///-- Heading
                  TSectionHeading(title: 'Popular Products',onPressed: (){},showActionButton: false
                  ),
                  const SizedBox(height: TSizes.spaceBwItems,),

                  /// --popular products
                  TGridLayout(itemCount: 4,
                  itemBuilder: (_,index)=> const 
                  TProductCardVertical()),
                  
                ])),
          ],
        ),
      ),
    );
  }
}
