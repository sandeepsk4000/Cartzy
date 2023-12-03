import 'package:cartzy_ecommerce/features/personalization/screens/settings/settings.dart';
import 'package:cartzy_ecommerce/features/shop/screens/home/home.dart';
import 'package:cartzy_ecommerce/features/shop/screens/store/store.dart';
import 'package:cartzy_ecommerce/features/shop/screens/wishliist/wishlist.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
    final dark=THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>controller.selectedIndex.value=index ,
          indicatorColor: dark? TColors.white.withOpacity(0.1):TColors.black.withOpacity(0.1),
          destinations:const [
            NavigationDestination(icon: Icon(Iconsax.home), label:'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label:'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label:'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label:'Profile')
            
          ]),
      ),
        body: Obx(
          ()=> controller.screens[controller.selectedIndex.value]),);
  }
}
class NavigationController extends GetxController {
  ///create observe variable!!!
  final Rx<int> selectedIndex=0.obs;

  ///Destinations Screens!!!
  final screens=[
    const HomeScreen(),
  const Store(), 
  const FavouriteScreen(),
  const SettingScreen()
  ];
  
  
}
