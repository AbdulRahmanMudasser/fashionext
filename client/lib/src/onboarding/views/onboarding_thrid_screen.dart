import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/custom_button.dart';
import 'package:fashionext/src/onboarding/models/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/utils/app_strings.dart';
import '../../../core/common/widgets/app_style.dart';

class OnBoardingThirdScreen extends StatelessWidget {
  const OnBoardingThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.kWhite,
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),

            // Image
            Image.asset(OnBoardModel.onboardList[2].image),

            SizedBox(
              height: 20.h,
            ),

            // Header Text
            Text(
              OnBoardModel.onboardList[2].header!,
              textAlign: TextAlign.center,
              style: AppStyle(
                24,
                AppColors.kPrimary,
                FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 45.h,
            ),

            SizedBox(
              width: ScreenUtil().screenWidth - 75,
              child: Text(
                OnBoardModel.onboardList[2].text,
                textAlign: TextAlign.center,
                style: AppStyle(
                  11,
                  AppColors.kGray,
                  FontWeight.normal,
                ),
              ),
            ),

            SizedBox(
              height: 40.h,
            ),

            GradientBtn(
              text: AppStrings.kGetStarted,
              btnHeight: 35,
              radius: 10,
              btnWidth: ScreenUtil().screenWidth - 75,
              onTap: () {
                // Save to Local Storage
                // TODO: Uncomment When App Is Ready
                // Storage().setBool('firsttime', true);

                // Navigate to Home Screen
                context.go('/appentrypoint');
              },
            ),

            SizedBox(
              height: 20.h,
            ),

            GestureDetector(
              onTap: () {
                // Navigate to Login Page
                context.go('/login');
              },
              child: RichText(
                text: TextSpan(
                  text: AppStrings.kAlreadyHaveAccount,
                  style: AppStyle(
                    12,
                    AppColors.kDark,
                    FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: AppStrings.kSignIn,
                      style: AppStyle(
                        12,
                        AppColors.kPrimaryLight,
                        FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
