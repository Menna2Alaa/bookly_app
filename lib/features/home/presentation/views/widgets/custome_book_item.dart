import 'package:flutter/material.dart';

class CustomeBookImage extends StatelessWidget {
  const CustomeBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/test_image.png'),
          ),
        ),
      ),
    );
  }
}
