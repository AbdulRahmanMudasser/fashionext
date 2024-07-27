import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:fashionext/src/home/views/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12.h,
          ),

          // Location Text
          ReusableText(
            text: AppStrings.kLocationText,
            style: AppStyle(
              12,
              AppColors.kGray,
              FontWeight.normal,
            ),
          ),

          SizedBox(
            height: 5.h,
          ),

          Row(
            children: [
              const Icon(
                Ionicons.location,
                size: 16,
                color: AppColors.kPrimary,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: SizedBox(
                  width: ScreenUtil().screenWidth * 0.7,
                  child: Text(
                    AppStrings.kEnterLocation,
                    maxLines: 1,
                    style: AppStyle(
                      14,
                      AppColors.kDark,
                      FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: const [
        NotificationWidget(),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: GestureDetector(
          onTap: () {
            // Navigate to Search Screen
            context.push('/search');
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Search Bar
                Container(
                  height: 40.h,
                  width: ScreenUtil().screenWidth - 80,
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: AppColors.kGrayLight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Ionicons.search,
                        size: 20,
                        color: AppColors.kPrimaryLight,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      ReusableText(
                        text: AppStrings.kSearchProducts,
                        style: AppStyle(
                          14,
                          AppColors.kGray,
                          FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                // Settings Screen
                Container(
                  height: 40.h,
                  width: 40.w,
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: const Icon(
                    FontAwesome.sliders,
                    color: AppColors.kWhite,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
