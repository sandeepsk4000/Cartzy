import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size=TSizes.lg,
   required this.icon,
    this.backgroundColor,
    this.onPressed,
    this.color,
  });
  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor, color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ?? (dark
            ? TColors.black.withOpacity(0.9)
            : TColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
