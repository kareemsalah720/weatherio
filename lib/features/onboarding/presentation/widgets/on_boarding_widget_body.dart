import 'package:flutter/material.dart';
import 'package:weatherio/core/utils/app_text_styles.dart';
import 'package:weatherio/features/onboarding/data/on_boarding_model.dart';
import 'package:weatherio/features/onboarding/presentation/widgets/cutom_smooth_page.dart';

class OnBoardingwidgetBody extends StatelessWidget {
  OnBoardingwidgetBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
          onPageChanged: onPageChanged,
          controller: controller,
          itemCount: onbordingList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 293,
                  width: 343,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    onbordingList[index].image,
                  ))),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomSmoothPageIndecator(controller: controller),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onbordingList[index].appname,
                      style: CustomTextStyles.pacifico300style54
                          .copyWith(fontSize: 34),
                    ),
                    Text(
                      onbordingList[index].title,
                      style: CustomTextStyles.poppins600style26,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
