import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    super.key,
    required this.shimmerWidth,
    required this.shimmerHieght,
    required this.shimmerRadius,
  });

  final double shimmerWidth;
  final double shimmerHieght;
  final double shimmerRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: shimmerWidth,
      height: shimmerHieght,
      child: _buildShimmerLine(
        height: shimmerHieght,
        width: shimmerHieght,
        radius: shimmerRadius,
      ),
    );
  }

  Widget _buildShimmerLine({
    required double height,
    required double width,
    required double radius,
  }) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: AppColors.kGray.withOpacity(0.3),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
