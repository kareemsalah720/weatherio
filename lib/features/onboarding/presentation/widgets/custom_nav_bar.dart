import 'package:flutter/material.dart';
import 'package:weatherio/core/utils/app_strings.dart';
import 'package:weatherio/core/utils/app_text_styles.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          AppStrings.skip,
          style: CustomTextStyles.defaultstyle,
        ),
      ),
    );
  }
}
