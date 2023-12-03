import 'package:cartzy_ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key,
    required this.title,
    required this.maxlines,
    required this.textAlign, 
   required this.brandTextSize, 
   this.color,
  });

  final String title;
  final int maxlines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxlines,
      textAlign: textAlign,
      style: brandTextSize == TextSizes.small?Theme.of(context).textTheme.labelMedium!.apply(color: color):
      brandTextSize == TextSizes.medium?
      Theme.of(context).textTheme.bodyLarge!.apply(color: color)
      : brandTextSize == TextSizes.large
      ?Theme.of(context).textTheme.titleLarge!.apply(color: color)
      :Theme.of(context).textTheme.bodyMedium!.apply(color: color)
    );
  }
}