
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_circular_image.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_brand_title_text_with_verified)icon.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/enums.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, required this.showBorder, this.onTap,
    
  });
  final bool showBorder;
  final void Function()? onTap;
  

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: TCircularContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroungColor: Colors.transparent,
        child: Row(
          children: [
            //Icon
            Flexible(
              child: TCircularImage(
                width: 56,
                height: 56,
                fit: BoxFit.contain,
                isNetWorkImage: false,
                image: TImages.shoeIcon,
                backGroundColor: Colors.transparent,
                overLayColor: dark
                    ? TColors.white
                    : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBwItems / 2,
            ),

            ///-- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerification(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
