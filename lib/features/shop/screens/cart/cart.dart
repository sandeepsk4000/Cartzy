import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:cartzy_ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:cartzy_ecommerce/features/shop/screens/product_details/widgets/t_product_price_text.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text("checkout \u{20B9}${20000}")),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
            itemBuilder:(_, index) => const Column(
              children: [
                 TCartItem(),
                 SizedBox(height: TSizes.spaceBwItems,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      SizedBox(width: 70,),
                      TProductQuantityWithAddAndRemove(),

                    ],
                  ),
                     TProductPriceText(price: '5000')
                 ],)
                 
              

              ],
            ) ,
            separatorBuilder: (_, __) =>const SizedBox(height: TSizes.spaceBtwSections,) ,
            itemCount: 4),
      ),
    );
  }
}