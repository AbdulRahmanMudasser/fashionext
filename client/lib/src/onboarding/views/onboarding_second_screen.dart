import 'package:fashionext/src/onboarding/models/onboard_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/utils/app_colors.dart';
import '../../../core/common/widgets/app_style.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          // Image
          Image.asset(
            OnBoardModel.onboardList[1].image,
            fit: BoxFit.cover,
          ),

          // Text
          Positioned(
            bottom: 0.2.sh,
            left: 30,
            right: 30,
            child: Text(
              OnBoardModel.onboardList[1].text,
              textAlign: TextAlign.center,
              style: AppStyle(
                11,
                AppColors.kGray,
                FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
