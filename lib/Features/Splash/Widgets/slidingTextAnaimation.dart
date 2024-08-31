import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              "Book Nest",
              style: const TextStyle(fontFamily: "NerkoOne", fontSize: 50),
            ),
          );
        });
  }
}
