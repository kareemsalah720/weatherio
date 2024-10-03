import 'package:flutter/material.dart';
import 'package:weatherio/core/functions/navigation.dart';
import 'package:weatherio/core/utils/app_assets.dart';
import 'package:weatherio/core/utils/app_colors.dart';
import 'package:weatherio/core/utils/app_strings.dart';
import 'package:weatherio/core/utils/app_text_styles.dart';

class SplachView extends StatefulWidget {
  const SplachView({super.key});

  @override
  State<SplachView> createState() => _SplachViewState();
}

class _SplachViewState extends State<SplachView> {
  @override
  void initState() {
    delayedNavigatie(context);

    super.initState();
  }

  
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesSplach,height: 210,),
            Text(AppStrings.appname,
                style: CustomTextStyles.pacifico300style54),
          ],
        ),
      ),
    );
  }
}

void delayedNavigatie(context) {
    Future.delayed(const Duration(seconds: 50), () {
      customNavigate(context, '/onBoarding');
    });
  }
