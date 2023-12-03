import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:cartzy_ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:cartzy_ecommerce/common/widgets/list_tiles/user_profile_tiles.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/personalization/screens/address/address.dart';
import 'package:cartzy_ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //--AppBar
                  TAppBar(
                      title: Text('Account',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white))),

                  //--User Profile Card
                   TUserProfileTile(
                    onPressed: ()=>Get.to(()=>const ProfileScreen()),
                   ),
                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
            ),

            ///-- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  ///--Account settings
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSettingsMenuTile(icon: Iconsax.safe_home,
                   title: 'My Address', 
                   subTitle: 'Set shopping delivery address',
                   onTap: ()=>Get.to(()=>const AddressScreen()),),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add,remove Products and move to checkout',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_bag,
                    title: 'My Orders',
                    subTitle: 'In-progress  and Completed Orders',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withraw balance to registered bank account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set any kind of notification coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),
                  ///--App Settings
                  const SizedBox(),
                  const TSectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBwItems,
                  ),
                  const TSettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),
                   TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'Set recommentation based location',
                      trailing: Switch(value: true, onChanged: (value) {},),),
                      TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safety Mode',
                      subTitle: 'Search result in safe for allages',
                      trailing: Switch(value: true, onChanged: (value) {},),),
                      TSettingsMenuTile(
                      icon: Iconsax.image,
                      title: 'HD Image quality to be seen',
                      subTitle: 'Set image quality to be seen',
                      trailing: Switch(value: true, onChanged: (value) {},),),

                      ///-- Logout Button
                       const SizedBox(height:TSizes.spaceBtwSections ,),
                       SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: () {
                           }, child: const Text('Logout')),
                       ),
                       const SizedBox(height: TSizes.spaceBtwSections * 2.5,) 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
