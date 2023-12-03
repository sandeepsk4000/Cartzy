import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/device/device_utility.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.actions,
      this.leadingIcon,
      this.leadingOnPressed,
      this.showBackArrow = false,
      this.title});

  final Widget? title;
  final bool showBackArrow;
  final List<Widget>? actions;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon:  Icon(Iconsax.arrow_left,color: dark?TColors.white:TColors.black,))
            :leadingIcon != null ?  IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
            title: title,
            actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
