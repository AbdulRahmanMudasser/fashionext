import 'package:fashionext/core/const/resource.dart';

import '../../../core/common/utils/app_strings.dart';

class OnBoardModel {
  final String image;
  final String? header;
  final String text;

  OnBoardModel({required this.image, this.header, required this.text});

  static List<OnBoardModel> onboardList = [
    OnBoardModel(
      image: R.ASSETS_IMAGES_EXPERIENCE_PNG,
      text: AppStrings.kOnboardHome,
    ),
    OnBoardModel(
      image: R.ASSETS_IMAGES_WISHLIST_PNG,
      text: AppStrings.kOnboardWishListMessage,
    ),
    OnBoardModel(
      image: R.ASSETS_IMAGES_GETSTARTED_PNG,
      header: AppStrings.kWelcomeHeader,
      text: AppStrings.kWelcomeMessage,
    ),
  ];
}
