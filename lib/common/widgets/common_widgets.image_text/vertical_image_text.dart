import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    this.image,
    this.title,
    this.textColor,
    this.backgroungColor,
    this.onTap,
  });
  final String? image, title;
  final Color? textColor;
  final Color? backgroungColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.sm),
        child: Column(
          children: [
            //circular icon
            Container(
              height: 56,
              width: 56,
              decoration: BoxDecoration(
                  color: backgroungColor ??
                      (THelperFunction.isDarkMode(context)
                          ? TColors.black
                          : TColors.white),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(
                    image!,
                  ),
                  height: 30,
                  fit: BoxFit.cover,
                  color: THelperFunction.isDarkMode(context)
                      ? TColors.light
                      : TColors.dark,
                ),
              ),
            ),

            ///Text
            const SizedBox(
              height: TSizes.spaceBwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                'shoes category',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
