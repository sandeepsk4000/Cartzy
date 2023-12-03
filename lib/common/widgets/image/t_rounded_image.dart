

import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius,
    this.border,
    this.fit,
    this.padding,
    this.isNetWorkImage=false,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius=TSizes.md
  });
  final double? width, height;
  final String imageUrl;
  final bool? applyImageRadius;
  final BoxBorder? border;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool? isNetWorkImage;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: ClipRRect(
            borderRadius: applyImageRadius!? BorderRadius.circular(borderRadius!):BorderRadius.zero,
            child:  Image(
              fit: fit,
              image:isNetWorkImage!?NetworkImage(imageUrl): AssetImage(imageUrl)as ImageProvider,
            )),
      ),
    );
  }
}
