import 'package:cartzy_ecommerce/common/widgets/brands/t_brand_show_case.dart';
import 'package:cartzy_ecommerce/common/widgets/layout/tgrid_layout.dart';
import 'package:cartzy_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[ 
        Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child:Column(
                    children: [
                      ///--Brands
                      const TBrandShowCase(images: [TImages.productImage1,TImages.productImage2,TImages.productImage3],),
                      const SizedBox(height: TSizes.spaceBwItems,),
                      ///--products
                      TSectionHeading(title: 'You might like',showActionButton: true,onPressed: (){},buttonTitle: 'See More'),
                      const SizedBox(height: TSizes.spaceBwItems,),
                      TGridLayout(itemCount: 4, 
                      itemBuilder: (_,index)=>const TProductCardVertical()),
                      
                      const SizedBox(height: TSizes.spaceBtwSections,)
                      
                    ],
                  ),
                ),
    ]);
            
  }
}