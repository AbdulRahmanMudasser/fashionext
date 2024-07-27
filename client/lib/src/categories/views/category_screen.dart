import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/common/widgets/app_style.dart';
import 'package:fashionext/core/common/widgets/back_button.dart';
import 'package:fashionext/core/common/widgets/reusable_text.dart';
import 'package:fashionext/src/categories/controllers/category_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const AppBackButton(),
        title: ReusableText(
          text: context.read<CategoryNotifier>().category,
          style: AppStyle(
            16,
            AppColors.kPrimary,
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
