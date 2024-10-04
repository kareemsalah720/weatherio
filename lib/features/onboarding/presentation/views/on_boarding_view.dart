import 'package:flutter/material.dart';
import 'package:weatherio/core/functions/navigation.dart';
import 'package:weatherio/features/onboarding/data/on_boarding_model.dart';
import 'package:weatherio/features/onboarding/presentation/widgets/custom_buttom_next.dart';
import 'package:weatherio/features/onboarding/presentation/widgets/custom_nav_bar.dart';
import 'package:weatherio/features/onboarding/presentation/widgets/on_boarding_widget_body.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 199, 212, 230),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: ListView(
            children: [
              const CustomNavBar(),
              const SizedBox(
                height: 10,
              ),
              OnBoardingwidgetBody(
                  onPageChanged: (index) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                  controller: _controller),
              const SizedBox(
                height: 110,
              ),
              CustomButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.ease);
                  if (currentindex == onbordingList.length - 1) {
                    customReplacementNavigate(context, '/signUp');
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
