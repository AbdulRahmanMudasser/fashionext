import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/src/onboarding/models/onboard_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      child: Stack(
        children: [
          // Image
          Image.asset(
            OnBoardModel.onboardList[0].image,
            fit: BoxFit.cover,
          ),

          // Text
          Positioned(
            bottom: 0.2.sh,
            left: 30,
            right: 30,
            child: Text(
              OnBoardModel.onboardList[0].text,
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
