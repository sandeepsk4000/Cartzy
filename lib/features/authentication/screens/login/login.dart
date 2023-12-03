import 'package:cartzy_ecommerce/common/styles/spacing_styles.dart';
import 'package:cartzy_ecommerce/common/widgets/widgets.login_signup/social_buttons.dart';
import 'package:cartzy_ecommerce/common/widgets/widgets.login_signup/form_divider.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/login/widgets/log_in_form.dart';
import 'package:cartzy_ecommerce/features/authentication/screens/login/widgets/log_in_header.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            ///Logo,Title & subtitle
            const LogInHeader(),
            const SizedBox(
              height: TSizes.lg,
            ),
            //Form
            const LogInForm(),

            //Devider
           FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
            const SizedBox(
              height: TSizes.defaultSpace,
            ),
            //footer
            const TsocialButtons()
          ],
        ),
      )),
    );
  }
}
