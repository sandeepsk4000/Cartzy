import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../custom_shapes/containers/circular_container.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: THelperFunction.getColor(text)!=null ? const SizedBox(): Text(text),
        selected: selected,
        onSelected: (value) {},
        labelStyle: TextStyle(color: selected ? TColors.white : null),
        avatar:THelperFunction.getColor(text)!= null? const TCircularContainer(
    
            height: 50,
            width: 50,
            backgroungColor: Colors.green,
            showBorder: false):null,
        shape: THelperFunction.getColor(text)!= null? const  CircleBorder(): null,
        labelPadding: THelperFunction.getColor(text)!= null ? const  EdgeInsets.all(0):null,
        padding: THelperFunction.getColor(text)!= null ? const EdgeInsets.all(0):null,
        backgroundColor:THelperFunction.getColor(text)!= null? THelperFunction.getColor(text)!:null,
        selectedColor: Colors.green,
      ),
    );
  }
}
