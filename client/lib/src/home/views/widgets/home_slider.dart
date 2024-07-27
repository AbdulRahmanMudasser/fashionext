import 'package:cached_network_image/cached_network_image.dart';
import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/const/constants.dart';
import 'package:fashionext/src/home/data/home_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              indicatorColor: AppColors.kWhite,
              autoPlayInterval: 5000,
              isLoop: true,
              indicatorBackgroundColor: AppColors.kOffWhite.withOpacity(0.5),
              // onPageChanged: (value) => debugPrint(value.toString()),
              children: List.generate(
                HomeData.bannersUrl.length,
                (index) {
                  return CachedNetworkImage(
                    errorWidget: errorWidget,
                    placeholder: placeholder,
                    imageUrl: HomeData.bannersUrl[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
