import 'package:bookly_app/core/widgets/custome_button.dart';
import 'package:flutter/material.dart';

class BookButtonAction extends StatelessWidget {
  const BookButtonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomeButton(
              backgroundColor: Colors.white,
              text: '19.99 €',
              textColor: Colors.black,
              boarderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),

          Expanded(
            child: CustomeButton(
              backgroundColor: Color(0xffEF8262),
              text: 'Free Preview',
              textColor: Colors.white,
              boarderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
