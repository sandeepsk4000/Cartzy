import 'package:cartzy_ecommerce/common/widgets/brands/brand_card/brand_card.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TCircularContainer(
      showBorder: true,
      borderColor: TColors.darkerGrey,
      backgroungColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBwItems),
      child: Column(
        children: [
          // brand with product count
          const TBrandCard(showBorder: false),
          const SizedBox(height: TSizes.spaceBwItems,),

          ///-- Brand Top 3 productch
          Row(
            children: 
           images.map((image) => brandTopProductImageWidget(image, context)).toList(),
            )
      ]));
  }
  Widget brandTopProductImageWidget(String image,context){
    return  Expanded(
                child: TCircularContainer(
                  padding: const EdgeInsets.all(TSizes.sm),
                  height: 100,
                  backgroungColor: THelperFunction.isDarkMode(context)? TColors.darkerGrey : TColors.light,
                  margin: const EdgeInsets.only(right: TSizes.md),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              );
  }
}
