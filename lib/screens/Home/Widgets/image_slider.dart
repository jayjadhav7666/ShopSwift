import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final int currentSlider;
  final Function(int) onChange;
  const ImageSlider(
      {super.key, required this.currentSlider, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(),
              onPageChanged: onChange,
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 8,
                  width: currentSlider == index ? 15 : 8,
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlider == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(color: Colors.black)),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
