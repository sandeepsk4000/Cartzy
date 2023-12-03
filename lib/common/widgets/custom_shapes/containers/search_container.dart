
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/device/device_utility.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground,
    this.showBoder,
    this.padding=const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)
  });
  final String text;
  final IconData? icon;
  final bool? showBackground,showBoder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
       width: TDeviceUtils.getScreenWidth(),
       padding: const EdgeInsets.all(TSizes.md),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
         border: showBoder!? Border.all(color: TColors.grey):null,
          color: showBackground!?dark? TColors.dark:TColors.light:Colors.transparent,
    
       ),
       child: Row(
         children: [
            Icon(icon,color:dark?TColors.white: TColors.darkERGrey,),
            const SizedBox(width: TSizes.spaceBwItems,),
            Text(text,style: Theme.of(context).textTheme.bodySmall,)
         ],
       ),
      ),
    );
  }
}
