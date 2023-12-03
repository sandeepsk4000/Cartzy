
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TsocialButtons extends StatelessWidget {
  const TsocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
             Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100)
              ),
              child: IconButton(onPressed: () {}, icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.google))),
             ),
             const SizedBox(width: TSizes.spaceBwItems,),
               Container(
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100)
              ),
              child: IconButton(onPressed: () {}, icon: const Image(
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                image: AssetImage(TImages.facebook))),
             ),

      ],
    );
  }
}