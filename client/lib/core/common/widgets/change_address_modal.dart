import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/constants.dart';

Future<dynamic> changeAddressBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: ScreenUtil().screenHeight,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: ReusableText(
                text: AppStrings.kCheckoutAddress,
                style: AppStyle(
                  16,
                  AppColors.kPrimary,
                  FontWeight.w500,
                ),
              ),
            ),
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
            ReusableText(
              text: AppStrings.kCheckoutAddressText,
              style: AppStyle(13, AppColors.kGray, FontWeight.w500),
            ),
            SizedBox(
              height: 10.h,
            ),
            /// TODO: CheckoutAddressSelection
            // SizedBox(
            //   height: ScreenUtil().screenHeight * 0.6,
            //   child: const CheckoutAddressSelection(),
            // ),
          ],
        ),
      );
    },
  );
}
