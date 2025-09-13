import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final String image;
  final Function(int) onChange;
  const MyImageSlider({super.key, required this.image, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index) {
          return Hero(tag: image, child: Image.asset(image));
        },
      ),
    );
  }
}
