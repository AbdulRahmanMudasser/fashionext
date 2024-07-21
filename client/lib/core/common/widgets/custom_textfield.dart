import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.validator,
    this.suffixIcon,
    this.obscureText,
    this.onEditingComplete,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool? obscureText;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.h),
      padding: EdgeInsets.only(left: 4.h),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
          color: AppColors.kGray,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(9)),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        onEditingComplete: onEditingComplete,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: AppStyle(11, AppColors.kGray, FontWeight.normal),
            border: InputBorder.none),
        controller: controller,
        cursorHeight: 20,
        style: AppStyle(11, AppColors.kDark, FontWeight.normal),
        validator: validator,
      ),
    );
  }
}
