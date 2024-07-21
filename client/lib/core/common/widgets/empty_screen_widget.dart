import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../const/resource.dart';

class EmptyScreenWidget extends StatelessWidget {
  const EmptyScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Image.asset(
            R.ASSETS_IMAGES_EMPTY_PNG,
            height: ScreenUtil().screenHeight * 0.7,
            width: ScreenUtil().screenWidth,
          ),
        )
      ],
    );
  }
}
