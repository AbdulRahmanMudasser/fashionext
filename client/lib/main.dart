import 'package:fashionext/core/common/utils/app_routes.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/utils/environment.dart';
import 'package:fashionext/src/app%20entry%20point/controllers/bottom_nav_notifier.dart';
import 'package:fashionext/src/categories/controllers/category_notifier.dart';
import 'package:fashionext/src/onboarding/controllers/onboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'src/splash/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Hide Status Bar
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  // Set Status Bar Color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  // Load Environment
  await dotenv.load(fileName: Environment.fileName);

  // Initialize Get Storage
  await GetStorage.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => OnBoardNotifier()),
        ChangeNotifierProvider(create: (_) => BottomNavNotifier()),
        ChangeNotifierProvider(create: (_) => CategoryNotifier())
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: false,
      builder: (_, child) {
        return MaterialApp.router(
          title: AppStrings.kAppName,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
      child: const SplashScreen(),
    );
  }
}
