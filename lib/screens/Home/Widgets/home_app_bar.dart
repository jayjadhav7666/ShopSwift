import 'package:shopswift/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15)),
          icon: Image.asset(
            "images/icon.png",
            height: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
              padding: const EdgeInsets.all(15)),
          icon: const Icon(
            size: 30,
            Icons.notifications_outlined,
          ),
        ),
      ],
    );
  }
}
