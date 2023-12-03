import 'package:cartzy_ecommerce/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/onboarding_screens/widgets/onboarding.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/onboarding_screens/widgets/onboarding_dot_navigation.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/onboarding_screens/widgets/onboarding_skip.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:cartzy_ecommerce/utils/device/device_utility.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(image: TImages.onBoardingImage1,title: TTexts.onBoardingTitle1,subTitle:TTexts.onBoardingSubTitle1),
               OnBoardingPage(image: TImages.onBoardingImage2,title: TTexts.onBoardingTitle2,subTitle:TTexts.onBoardingSubTitle2),
                OnBoardingPage(image: TImages.onBoardingImage3,title: TTexts.onBoardingTitle3,subTitle:TTexts.onBoardingSubTitle3),
            ],
          ),
          /// skip button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),
          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(shape: const CircleBorder(),
        backgroundColor: dark?TColors.primaryColor:Colors.black
        ),
        onPressed:()=>OnBoardingController.instance.nextPage(),
       child: Icon(Iconsax.arrow_right_3,
       color: dark?Colors.black:TColors.white,
       )),

    );
  }
}




  