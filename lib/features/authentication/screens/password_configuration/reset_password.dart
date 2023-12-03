import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(image:   const AssetImage(TImages.verifyEmail),
              width:THelperFunction.screenWidth()*0.6 ,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & SubTitle
              Text(TTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBwItems,),
              Text(TTexts.changeYourPasswordSubTilte,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height:TSizes.spaceBtwSections ,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //button
               SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},
              child: const Text(TTexts.done)),),
                SizedBox(width: double.infinity,child: TextButton(onPressed: (){},
              child: const Text(TTexts.resendemail)),),

            ]
          ),
        ),
      ),
    );
  }
}
