import 'package:cartzy_ecommerce/common/widgets/texts/t_brand_title_text.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/enums.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerification extends StatelessWidget {
  const TBrandTitleWithVerification({
    super.key,
    required this.title,
    this.maxlines = 1,
    this.textColor,
    this.iconColor = TColors.primaryColor,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxlines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TBrandTitleText(
            title: title,
            maxlines: maxlines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primaryColor,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
