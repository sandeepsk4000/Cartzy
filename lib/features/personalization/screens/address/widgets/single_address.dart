import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCircularContainer(
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroungColor:
          selectedAddress ? TColors.primaryColor : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBwItems),
      child: Stack(
        children: [
          Positioned(
            right: 15,top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? TColors.light
                        : TColors.dark
                    : null),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sandeep',
             maxLines: 1,
             overflow: TextOverflow.ellipsis,
             style: Theme.of(context).textTheme.titleLarge,),
             const SizedBox(height: TSizes.sm/2,) ,
             const Text('(+91)7907875969',
             maxLines: 1,
             overflow: TextOverflow.ellipsis,),
             const SizedBox(height: TSizes.sm/2,), Text(
              "sandeep bhavan 25, Eravipuram, kollam,kerala,india",
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
             style: Theme.of(context).textTheme.titleLarge,),
            ],
          )
        ],
      ),
    );
  }
}
