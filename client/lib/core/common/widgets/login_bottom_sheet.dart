import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../const/constants.dart';
import 'custom_button.dart';

Future<dynamic> loginBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: kRadiusTop,
          color: Colors.white,
        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 16.h,
            ),
            Center(
              child: ReusableText(
                text: AppStrings.kLogin,
                style: AppStyle(16, AppColors.kPrimary, FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Divider(
              color: AppColors.kGrayLight,
              thickness: 0.5.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: ReusableText(
                text: AppStrings.kLoginText,
                style: AppStyle(13, AppColors.kGray, FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: GradientBtn(
                text: "Proceed to Login",
                onTap: () {
                  context.push("/login");
                },
                btnHeight: 35.h,
                radius: 10,
                btnWidth: ScreenUtil().screenWidth,
              ),
            )
          ],
        ),
      );
    },
  );
}
