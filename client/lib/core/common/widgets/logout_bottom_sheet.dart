import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../const/constants.dart';
import '../services/storage.dart';
import 'custom_button.dart';

Future<dynamic> logoutBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: AppStrings.kLogout,
                    style: AppStyle(16, AppColors.kPrimary, FontWeight.w500),),),
            SizedBox(
              height: 10.h,
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
                    text: AppStrings.kLogoutText,
                    style: AppStyle(14, AppColors.kGray, FontWeight.w500),),),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientBtn(
                    text: "Cancel",
                    borderColor: AppColors.kDark,
                    btnColor: AppColors.kWhite,
                    onTap: () => Navigator.pop(context),
                    btnHeight: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                  GradientBtn(
                    text: "Yes, Logout",
                    onTap: () {
                      Storage().removeKey('accessToken');
                      /// TODO: TabIndexNotifier
                      // context.read<TabIndexNotifier>().tabIndex = 0;
                      context.go("/home");
                      context.pop();
                    },
                    btnHeight: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
