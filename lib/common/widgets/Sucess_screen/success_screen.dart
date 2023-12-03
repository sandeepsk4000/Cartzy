import 'package:cartzy_ecommerce/common/styles/spacing_styles.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TSuccesScreen extends StatelessWidget {
  const TSuccesScreen({super.key,
  required this.image,
  required this.title,
  required this.SubTitle,
  required this.onPressed});
  
  final String image,title,SubTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child: Column(
            children: [
               //Image
              Image(image:   AssetImage(image),
              width:THelperFunction.screenWidth()*0.6 ,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Title & SubTitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBwItems,),
              Text(SubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height:TSizes.spaceBtwSections ,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //button
               SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed,
              child: const Text(TTexts.tContinue)),),

            ],
          ),),
      ),
    );
  }
}