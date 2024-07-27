import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/back_button.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:fashionext/src/categories/controllers/category_notifier.dart';
import 'package:fashionext/src/categories/data/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const AppBackButton(),
        title: ReusableText(
          text: AppStrings.kCategories,
          style: AppStyle(
            16,
            AppColors.kPrimary,
            FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: CategoriesData.categories.length,
        padding: EdgeInsets.only(top: 20.h),
        itemBuilder: (context, index) {
          final category = CategoriesData.categories[index];

          return ListTile(
              onTap: () {
                // Navigate to Specific Category Screen
                context.read<CategoryNotifier>().setCategory(category.title, category.id);
                context.push('/category');
              },
              leading: CircleAvatar(
                backgroundColor: AppColors.kSecondaryLight,
                radius: 18,
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: SvgPicture.network(
                    category.imageUrl,
                  ),
                ),
              ),
              title: ReusableText(
                text: category.title,
                style: AppStyle(
                  13,
                  AppColors.kGray,
                  FontWeight.normal,
                ),
              ),
              trailing: Icon(
                Ionicons.chevron_forward,
                size: 18,
              ));
        },
      ),
    );
  }
}
