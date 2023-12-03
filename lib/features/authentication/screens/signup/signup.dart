import 'package:cartzy_ecommerce/common/widgets/widgets.login_signup/form_divider.dart';
import 'package:cartzy_ecommerce/common/widgets/widgets.login_signup/social_buttons.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/signup/widgets/sigup_form.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(    
      appBar: AppBar(



      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const  EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(TTexts.signUpTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              //Form
          const TSignUpForm(),
                  const SizedBox(height: TSizes.spaceBwItems,),

                  ///Divider
                  FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                   const SizedBox(height: TSizes.spaceBwItems,),
                  /// Social buttons
                  const TsocialButtons()
        
            ],
          ),
        ),
      ),
    );
  }
}
