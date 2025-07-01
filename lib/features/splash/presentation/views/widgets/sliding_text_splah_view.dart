import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimtion});

  final Animation<Offset> slidingAnimtion;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimtion,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimtion,
          child: const Text(
            'Read free books',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
