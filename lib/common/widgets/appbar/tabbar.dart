import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/device/device_utility.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({super.key, required this.tabs});
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return  TabBar( 
      isScrollable: true,
      indicatorColor: TColors.primaryColor,
      unselectedLabelColor: TColors.darkerGrey,
      labelColor:dark? TColors.white:TColors.primaryColor ,
      tabs: tabs);
  }

  @override

  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
