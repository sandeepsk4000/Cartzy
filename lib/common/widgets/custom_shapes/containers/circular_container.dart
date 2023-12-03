import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({super.key,
  this.width,
  this.height,
  this.radius=TSizes.cardRadiusLg,
  this.padding,
  this.margin,
  this.child,
  this.backgroungColor,
  this.borderColor=TColors.white,
  this.showBorder=false});

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final Color? backgroungColor;
  final EdgeInsets? margin;
  final Color borderColor;
  final bool showBorder;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroungColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder?Border.all(color: borderColor):null,
      ),
      child: child,
    );
  }
}

