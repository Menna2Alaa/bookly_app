import 'package:bookly_app/features/home/presentation/views/widgets/custome_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: const CustomeAppBar(),
        ),
        CustomeListViewItem(),
      ],
    );
  }
}
