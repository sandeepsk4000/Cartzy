import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/icon/t_circular_icon.dart';
import 'package:cartzy_ecommerce/common/widgets/layout/tgrid_layout.dart';
import 'package:cartzy_ecommerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cartzy_ecommerce/features/shop/screens/home/home.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(icon: Iconsax.add,onPressed: ()=>Get.to(const HomeScreen()),)
        ],
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(children: [
          TGridLayout(itemCount: 4, itemBuilder: (_,index)=>const TProductCardVertical())
        ],),
      ),
    );
  }
}