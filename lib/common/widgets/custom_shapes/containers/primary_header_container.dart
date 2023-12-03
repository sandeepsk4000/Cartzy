
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child:  Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
          Positioned(
    top: -150,
    right: -250
    ,
    child: TCircularContainer(backgroungColor: TColors.white.withOpacity(0.1),))  ,
     Positioned(
    top: 100,
    right: -300
    ,
    child: TCircularContainer(backgroungColor: TColors.white.withOpacity(0.1),)) ,
    child!

    
    
     
          ],
        ),
        
      ),

    );
  }
}