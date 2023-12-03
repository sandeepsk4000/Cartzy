

import 'package:flutter/material.dart';

import 'progress_indicator_and_rating.dart';

class TOverAllProductRating extends StatelessWidget {
  const TOverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TRatingProgressIndicator(text: '5',value: 1.0,),
        TRatingProgressIndicator(text: '4',value: 0.8,),
        TRatingProgressIndicator(text: '3',value: 0.6,),
        TRatingProgressIndicator(text: '2',value: 0.4,),
        TRatingProgressIndicator(text: '1',value: 0.2,),
      ],
    );
  }
}
