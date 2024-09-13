import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../Resources/colorManager.dart';

class CustomCircularStepProgressIndicator extends StatelessWidget {
  const CustomCircularStepProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularStepProgressIndicator(
      totalSteps: 12,
      currentStep: 6,
      selectedColor: Colors.redAccent,
      unselectedColor: Colors.grey[200],
      selectedStepSize: 10.0,
      width: 100,
      height: 100,
      gradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [kSecondColor, kSecondColor.withOpacity(0.7)],
      ),
    );
  }
}
