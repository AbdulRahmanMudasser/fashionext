import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.color,
    this.size,
    this.onTap,
  });

  final Color? color;
  final double? size;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => GoRouter.of(context).pop(),
      child: Icon(
        AntDesign.leftcircle,
        color: color ?? AppColors.kPrimary,
        size: size ?? 24,
      ),
    );
  }
}
