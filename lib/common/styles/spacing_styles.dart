import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight= EdgeInsets.only(
    top: TSizes.appbarHeight,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace
  );
}