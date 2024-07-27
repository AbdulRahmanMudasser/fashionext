import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:provider/provider.dart';

import '../controllers/onboard_notifier.dart';
import 'onboarding_first_screen.dart';
import 'onboarding_second_screen.dart';
import 'onboarding_thrid_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: context.read<OnBoardNotifier>().selectedPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenUtil().screenHeight,
        width: ScreenUtil().screenWidth,
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                context.read<OnBoardNotifier>().changePage = page;
              },
              children: const [
                OnBoardingFirstScreen(),
                OnBoardingSecondScreen(),
                OnBoardingThirdScreen(),
              ],
            ),

            // Bottom Row
            context.watch<OnBoardNotifier>().selectedPage == 2
                ? const SizedBox.shrink()
                : Positioned(
                    bottom: 20.h,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      width: ScreenUtil().screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Left Icon
                          context.watch<OnBoardNotifier>().selectedPage == 0
                              ? const SizedBox(
                                  width: 30,
                                )
                              : GestureDetector(
                                  onTap: () {
                                    _pageController.animateToPage(
                                      context.read<OnBoardNotifier>().selectedPage - 1,
                                      duration: const Duration(milliseconds: 200),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  child: const Icon(
                                    AntDesign.leftcircleo,
                                    color: AppColors.kPrimary,
                                    size: 30,
                                  ),
                                ),

                          // Dot Indicators
                          SizedBox(
                            width: ScreenUtil().screenWidth * 0.7,
                            height: 40.h,
                            child: PageViewDotIndicator(
                              currentItem: context.watch<OnBoardNotifier>().selectedPage,
                              count: 3,
                              unselectedColor: Colors.black26,
                              selectedColor: AppColors.kPrimary,
                              duration: const Duration(milliseconds: 200),
                              // size: const Size(10, 10),
                              // unselectedSize: const Size(10, 10),
                              onItemClicked: (index) {
                                _pageController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn,
                                );
                              },
                            ),
                          ),

                          // Right Icon
                          GestureDetector(
                            onTap: () {
                              _pageController.animateToPage(
                                context.read<OnBoardNotifier>().selectedPage + 1,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeIn,
                              );
                            },
                            child: const Icon(
                              AntDesign.rightcircleo,
                              color: AppColors.kPrimary,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
