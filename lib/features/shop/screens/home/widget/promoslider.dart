
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/image/t_rounded_image.dart';
import 'package:cartzy_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners
  });
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          
          options: CarouselOptions(viewportFraction: 1,
          onPageChanged: (index, _) => controller.UpdatePageIndicator(index),),
          items: 
           banners.map((url) =>  TRoundedImage(imageUrl: url,
           applyImageRadius: true,
           borderRadius: TSizes.md,
           padding: const 
           EdgeInsets.all(TSizes.md),)).toList(),
          
        ),
        const SizedBox(
          height: TSizes.spaceBwItems,
        ),
        Obx(
          ()=> Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularContainer(
                  margin: const EdgeInsets.only(left: 5),
                  height: 4,
                  width: 30,
                  backgroungColor: controller.carousalCurrentIndex.value==i?TColors.primaryColor:TColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
