import 'package:cartzy_ecommerce/common/widgets/Sucess_screen/success_screen.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/login/login.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(TImages.verifyEmail),
                width: THelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),

              //Title & SubTitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              Text(
                'mallucoder4000@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => TSuccesScreen(
                          image: TImages.emailVerificationSuccess,
                          title: TTexts.yourAccountCreatedTitle,
                          SubTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(
                height: TSizes.spaceBwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendemail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
