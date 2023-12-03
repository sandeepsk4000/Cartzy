
import 'package:cartzy_ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/signup/widgets/terms_and_condition_checkbox.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
  
    return Form(
         child: Column(
           children: [
             Row(
               children: [
                 Flexible(
                   child: TextFormField(
                     expands: false,
                     decoration: const InputDecoration(
                       labelText: TTexts.firstName,
                       prefixIcon: Icon(Iconsax.user)
                     ),
                 
                   ),
                 ),
                 const SizedBox(width: TSizes.spaceBtwInputField,),
                    Flexible(
                   child: TextFormField(
                     expands: false,
                     decoration: const InputDecoration(
                       labelText: TTexts.lastName,
                       prefixIcon: Icon(Iconsax.user)
                     ),
                 
                   ),
                 ),

               ],
             ),
             const SizedBox(height: TSizes.spaceBtwInputField,),
             ///UserName
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.userName,
                    prefixIcon: Icon(Iconsax.user_edit)
                  )
                ),
                 const SizedBox(height: TSizes.spaceBtwInputField,),
                 ///Email
                 TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct)
                  )
                ),
                  const SizedBox(height: TSizes.spaceBtwInputField,),
                  ///Phone number
                TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.phoneNumber,
                    prefixIcon: Icon(Iconsax.call)
                  )
                ),
                  const SizedBox(height: TSizes.spaceBtwInputField,),
                  ///password
                   TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.password,
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: Icon(Iconsax.eye_slash)
                  )
                ),
                 const SizedBox(height: TSizes.spaceBtwSections,),
                 ///Terms&Condition Checkbox
                 const TTermsAndConditionCheckBox(),
                 const SizedBox(height: TSizes.spaceBtwSections,),

                 ///signup button
                 SizedBox(width: double.infinity,
                 child: ElevatedButton(onPressed:()=>Get.to(()=>const VerifyEmailScreen()),
                  child: const Text(TTexts.createAccount)),)
           ],));
  }
}
