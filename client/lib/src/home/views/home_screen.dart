import 'package:fashionext/core/common/widgets/custom_button.dart';
import 'package:fashionext/src/categories/views/widgets/categories_list.dart';
import 'package:fashionext/src/home/views/widgets/custom_app_bar.dart';
import 'package:fashionext/src/home/views/widgets/home_header.dart';
import 'package:fashionext/src/home/views/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common/utils/app_colors.dart';
import '../../../core/common/utils/app_strings.dart';
import '../../../core/common/widgets/app_style.dart';
import '../../../core/common/widgets/reusable_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: CustomAppBar(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        children: [
          SizedBox(
            height: 10.h,
          ),

          // New Collection Text, Discount Text, Shop Now Button
          SizedBox(
            width: ScreenUtil().screenWidth,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // New Collection Text
                    ReusableText(
                      text: AppStrings.kCollection,
                      style: AppStyle(
                        13,
                        AppColors.kDark,
                        FontWeight.w600,
                      ),
                    ),

                    ReusableText(
                      text: AppStrings.kDiscount,
                      style: AppStyle(
                        10,
                       AppColors.kGray,
                        FontWeight.normal,
                      ),
                    ),
                  ],
                ),

                // Shop Button
                GradientBtn(
                  text: AppStrings.kShopNow,
                  btnWidth: 75.w,
                  btnColor: AppColors.kPrimaryLight,
                  textSize: 10,
                  onTap: () {},
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10.h,
          ),

          // Slider
          const HomeSlider(),

          SizedBox(
            height: 15.h,
          ),

          // Header
          const HomeHeader(),

          SizedBox(
            height: 10.h,
          ),

          // Categories List
          const CategoriesList(),
        ],
      ),
    );
  }
}
