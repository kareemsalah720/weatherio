import 'package:flutter/material.dart';
import 'package:weatherio/core/utils/app_strings.dart';
import 'package:weatherio/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,  this.onPressed});
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed:onPressed,
        child: const Text(
          AppStrings.next,
          style: CustomTextStyles.defaultstyle,
        ),
      ),
    );
  }
}
