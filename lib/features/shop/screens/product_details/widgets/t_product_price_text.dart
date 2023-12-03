import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText(
      {super.key,
      this.currencySign='\u{20B9}',
      required this.price,
      this.maxLines=1,
      this.isLarge=false,
      this.lineThrouh=false
      });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrouh;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign +price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrouh? TextDecoration.lineThrough:null):
      Theme.of(context).textTheme.titleMedium!.apply(decoration: lineThrouh? TextDecoration.lineThrough: null),
    );
  }
}
