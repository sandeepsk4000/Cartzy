

import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle,
    this.showActionButton,
    this.textColor,
    this.onPressed
  });
  final String title;
  final String? buttonTitle;
  final bool? showActionButton;
  final Color? textColor;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),maxLines: 1,overflow: TextOverflow.ellipsis,),
        if(showActionButton!) TextButton(onPressed: onPressed, child:  Text(buttonTitle!))
      ],
    );
  }
}
