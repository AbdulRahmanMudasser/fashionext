import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_style.dart';

class GradientBtn extends StatelessWidget {
  const GradientBtn({
    super.key,
    this.onTap,
    this.btnWidth,
    required this.text,
    this.btnHeight,
    this.textSize,
    this.borderColor,
    this.radius,
    this.btnColor,
  });

  final void Function()? onTap;
  final double? btnWidth;
  final double? btnHeight;
  final double? radius;
  final String text;
  final double? textSize;
  final Color? borderColor;
  final Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth ?? ScreenUtil().screenWidth / 2,
        height: btnHeight ?? 25.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 6),
          color: btnColor ?? AppColors.kPrimaryLight,
          border: Border.all(
            width: 0.5.h,
            color: borderColor ?? AppColors.kWhite,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: ReusableText(
              text: text,
              style: AppStyle(
                textSize ?? 13,
                borderColor ?? AppColors.kWhite,
                FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
