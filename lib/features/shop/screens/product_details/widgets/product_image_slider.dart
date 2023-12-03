
import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:cartzy_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_rounded_image.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            /// Main Large Image
             const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),

            ///-- Image slider
            Positioned(
              left:20,
              bottom: 30,
              child: SizedBox(
                height: 80,
              
                child: ListView.separated(
                  
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBwItems,
                  ),
                  itemBuilder: (_, index) => TRoundedImage(
                    imageUrl: TImages.productImage1,
                    width: 80,
                    applyImageRadius: false,
                    fit: BoxFit.contain,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primaryColor),
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),
            ///--AppBar Icons
            const TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
