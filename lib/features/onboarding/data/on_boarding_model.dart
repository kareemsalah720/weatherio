import 'package:weatherio/core/utils/app_assets.dart';
import 'package:weatherio/core/utils/app_strings.dart';

class OnbordingModel {
  final String image;
  final String title;
  final String appname;

  OnbordingModel(this.appname, {required this.image, required this.title});
}

List<OnbordingModel> onbordingList = [
  OnbordingModel(
      image: Assets.imagesOnboarding1,
      title: AppStrings.anywhere,
      AppStrings.appname),
  OnbordingModel(
      image: Assets.imagesOnboarding2,
      title: AppStrings.everyday,
      AppStrings.appname),
];
