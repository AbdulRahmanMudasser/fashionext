import 'package:fashionext/core/common/services/storage.dart';
import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/core/const/resource.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigate();
    super.initState();
  }

  _navigate() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        if (Storage().getBool('firsttime') == null) {
          // Navigate to OnBoarding Screen
          GoRouter.of(context).go('/onboarding');
        } else {
          // Navigate to Home Screen
          GoRouter.of(context).go('/home');
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(R.ASSETS_IMAGES_SPLASHSCREEN_PNG),
          ),
        ),
      ),
    );
  }
}
