import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_circular_image.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),

      //--body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///--profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user1,
                      fit: BoxFit.cover,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              ///-- Details
              const SizedBox(
                height: TSizes.spaceBwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),

              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Sandeep',
              ),
              
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Sandeep',
              ),
              
              const SizedBox(height: TSizes.spaceBwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBwItems,),
              ///--Heading personal info
              const TSectionHeading(title: 'Personal Information',showActionButton: false,),
              const SizedBox(height: TSizes.spaceBwItems,),
              TProfileMenu(
                onPressed: () {},
                title: 'User-Id',
                value: '23456',
                icon: Iconsax.copy,
              ),
              
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'Sandeepsk4000@gmail.com',
              ),
              
              
              TProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '7907875969',
              ),
              
              
              TProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              
              TProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '24 sep,1996',
              ),
              const Divider(),
              const SizedBox(height: TSizes.spaceBwItems,),
              Center(child: TextButton(onPressed: (){}, child: const Text('Close All',style: TextStyle(color: Colors.red),)),)
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}
