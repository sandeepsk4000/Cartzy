import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TAddressSection extends StatelessWidget {
  const TAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Shipping Address',
          showActionButton: true,
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          'Sandeep kumar s',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: TSizes.spaceBwItems/2,),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBwItems,
            ),
            Text(
              '+91 7907875969',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: TSizes.spaceBwItems,
            ),
            Expanded(
                child: Text(
              'sandeep bhavan,Eravipuram,Kollam,Kerala,India',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
          ],
        )
      ],
    );
  }
}
