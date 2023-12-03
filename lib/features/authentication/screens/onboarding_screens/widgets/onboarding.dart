
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String image,title,subTitle;
   const OnBoardingPage({
    super.key,
    required this.image, required this.title, required this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunction.screenWidth()* 0.8,
            height: THelperFunction.screenHeight()*0.6,
            image: AssetImage(image)),
            Text(title,style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBwItems,
            ),
            Text(subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,),
            
    
            ],
      ),
    );
  }
}
