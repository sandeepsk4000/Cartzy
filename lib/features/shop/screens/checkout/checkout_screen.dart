import 'package:cartzy_ecommerce/common/widgets/Sucess_screen/success_screen.dart';
import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/products/cart/t_coupen.dart';
import 'package:cartzy_ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:cartzy_ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:cartzy_ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:cartzy_ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:cartzy_ecommerce/navigation_menu.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              const TCartItems(
                showAddRemoveButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Coupon Textfield
              const TCoupenCode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Billing Section
              TCircularContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroungColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    // pricing
                    TBillingAmountSection(),
                    SizedBox(height: TSizes.spaceBwItems),
                    // Divider
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBwItems,
                    ),
                    // payment methods
                    TBillingPaymentSection(),
                    SizedBox(
                      height: TSizes.spaceBwItems,
                    ),

                    // Address
                    TAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => TSuccesScreen(
                image: TImages.paymentSuccess,
                title: 'Payment Success',
                SubTitle: "Your item will be shipped soon!",
                onPressed: ()=>Get.offAll(()=>const NavigationMenu()))),
            child: const Text("checkout \u{20B9}${20000}")),
      ),
    );
  }
}
