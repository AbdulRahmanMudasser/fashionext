import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:fashionext/src/categories/controllers/category_notifier.dart';
import 'package:fashionext/src/categories/data/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: SizedBox(
        height: 80.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            CategoriesData.categories.length,
            (index) {
              final category = CategoriesData.categories[index];

              return GestureDetector(
                onTap: () {
                  // Navigate to Specific Category Screen
                  context.read<CategoryNotifier>().setCategory(category.title, category.id);
                  context.push('/category');
                },
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Category Icon
                      CircleAvatar(
                        backgroundColor: AppColors.kSecondaryLight,
                        child: Padding(
                          padding: EdgeInsets.all(4.h),
                          child: SvgPicture.network(
                            category.imageUrl,
                            width: 40.w,
                            height: 40.h,
                          ),
                        ),
                      ),

                      // Category Text
                      ReusableText(
                        text: category.title,
                        style: AppStyle(
                          12,
                          AppColors.kGray,
                          FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
