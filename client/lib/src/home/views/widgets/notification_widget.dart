import 'package:fashionext/core/common/services/storage.dart';
import 'package:fashionext/core/common/widgets/login_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/utils/app_colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Storage().getString('accesstoken') == null) {
          debugPrint("User Not Logged In");
          loginBottomSheet(context);
        } else {
          context.go('/notifications');
        }
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12, top: 10.h),
        child: CircleAvatar(
          backgroundColor: AppColors.kGrayLight.withOpacity(0.3),
          child: const Badge(
            label: Text(
              '4',
            ),
            child: Icon(
              Ionicons.notifications,
              size: 22,
              color: AppColors.kPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
