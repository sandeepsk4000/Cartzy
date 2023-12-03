import 'package:flutter/material.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    Key? key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetWorkImage = false,
    this.overLayColor,
    this.backGroundColor,
    this.width = 56,
    this.height = 56,
    this.padding,
  }) : super(key: key);

  final BoxFit fit;
  final String image;
  final bool isNetWorkImage;
  final Color? overLayColor;
  final Color? backGroundColor;
  final double width, height;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding ?? 0.0), // Using null-aware operator
      decoration: BoxDecoration(
        color: backGroundColor ?? (dark ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetWorkImage ? NetworkImage(image):AssetImage(image) as ImageProvider,
        color: overLayColor,
      ),
    );
  }
}
