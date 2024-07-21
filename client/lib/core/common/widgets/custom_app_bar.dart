import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

import 'app_style.dart';

class CustomAppBar extends HookWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// TODO: Result, Address, Please Select Your Location, Notifications Widget
    // final results = fetchDefaultAddress();
    // final address = results.address;
    return AppBar(
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: ReusableText(
              text: "Location",
              style: AppStyle(12, AppColors.kGray, FontWeight.normal),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            children: [
              const Icon(
                Ionicons.location,
                size: 14,
                color: AppColors.kPrimary,
              ),
              SizedBox(
                width: 5.h,
              ),
              // SizedBox(
              //   width: ScreenUtil().screenWidth * 0.7,
              //   child: Text(
              //     address != null ? address.address : "Please Set Your location",
              //     maxLines: 1,
              //     style: AppStyle(14, AppColors.kDark, FontWeight.w500),
              //   ),
              // ),
            ],
          ),
        ],
      ),
      actions: const [
        // NotificationsWidget(),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(55.h),
        child: GestureDetector(
          onTap: () {
            context.go('/search');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: ScreenUtil().screenWidth - 80.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: AppColors.kGrayLight,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(9)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Row(
                      children: [
                        const Icon(
                          Ionicons.search,
                          size: 20,
                          color: AppColors.kPrimaryLight,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ReusableText(
                          text: "Search",
                          style: AppStyle(14, AppColors.kGray, FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: const BoxDecoration(
                    color: AppColors.kPrimary,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: const Icon(
                    FontAwesome.sliders,
                    size: 20,
                    color: AppColors.kWhite,
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
