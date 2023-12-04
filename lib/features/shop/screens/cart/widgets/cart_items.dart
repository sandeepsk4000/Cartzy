import 'package:cartzy_ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:cartzy_ecommerce/common/widgets/products/cart/cart_item.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/t_product_price_text.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const  TCartItems({
    super.key, 
     this.showAddRemoveButton=true,
  });
 final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder:(_, index) =>  Column(
          children: [
             const TCartItem(),
            if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBwItems,),
            //Add Remove Button with total price
            if(showAddRemoveButton) const Row(
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
        itemCount: 4);
  }
}