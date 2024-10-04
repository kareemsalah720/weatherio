import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weatherio/core/utils/app_colors.dart';

class CustomSmoothPageIndecator extends StatelessWidget {
  const CustomSmoothPageIndecator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: 2,
effect:const WormEffect(dotHeight: 12, dotWidth: 12,dotColor:Colors.white,activeDotColor: AppColors.second ),
        onDotClicked: (index) {});
  }
}