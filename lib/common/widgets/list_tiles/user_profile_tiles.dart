
import 'package:cartzy_ecommerce/common/widgets/image/t_circular_image.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
     leading: const TCircularImage(
       image: TImages.user1,
       width: 50,
       height: 50,
       fit: BoxFit.cover,
       padding: 0,
     ),
     title: Text('Sandeep ',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('sandeepsk4000@gmail.com ',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit,color: TColors.white,)),
                  );
  }
}
