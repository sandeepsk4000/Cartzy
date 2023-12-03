

import 'package:cartzy_ecommerce/common/widgets/common_widgets.image_text/vertical_image_text.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class THomeCtegories extends StatelessWidget {
  const THomeCtegories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          TSectionHeading(
            buttonTitle: 'View All',
            title: 'Popular Categories',
            textColor: TColors.white,
            showActionButton: false,
            onPressed: () {},
            
          ),
          const SizedBox(
            height: TSizes.spaceBwItems,
          ),

          /// categories
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return TVerticalImageText(
                   image: TImages.shoeIcon,
                   title: 'Shoes',
                   onTap: () {},
                    textColor: TColors.white,
                    
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
