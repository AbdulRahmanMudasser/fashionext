import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/custom_button.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/utils/app_strings.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Categories Text
        ReusableText(
          text: AppStrings.kCategories,
          style: AppStyle(
            13,
            AppColors.kDark,
            FontWeight.w600,
          ),
        ),

        // View All Text
        // GestureDetector(
        //   onTap: () {},
        //   child: ReusableText(
        //     text: AppStrings.kViewAll,
        //     style: AppStyle(
        //       13,
        //       AppColors.kGray,
        //       FontWeight.normal,
        //     ),
        //   ),
        // ),

        // View All Button
        GradientBtn(
          text: AppStrings.kViewAll,
          btnWidth: 75.w,
          btnColor: AppColors.kPrimaryLight,
          textSize: 10,
          onTap: () {
            context.push('/categories');
          },
        ),
      ],
    );
  }
}
