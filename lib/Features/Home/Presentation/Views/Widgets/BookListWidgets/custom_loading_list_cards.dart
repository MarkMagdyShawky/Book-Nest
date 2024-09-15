import 'package:flutter/material.dart';

import '../../../../../../Core/Widgets/Loading/custom_loading_card.dart';

class CustomLoadingListCards extends StatelessWidget {
  const CustomLoadingListCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLoadingCard(),
        CustomLoadingCard(),
        CustomLoadingCard(),
      ],
    );
  }
}
