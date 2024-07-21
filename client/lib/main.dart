import 'package:fashionext/core/common/utils/app_routes.dart';
import 'package:fashionext/core/common/utils/app_strings.dart';
import 'package:fashionext/core/common/utils/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load Environment
  await dotenv.load(fileName: Environment.fileName);

  runApp(const MyApp());
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
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        );
      },
      child: Text(Environment.googleApiKey),
    );
  }
}
