import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../src/app entry point/views/app_entry_point.dart';
import '../../../src/auth/views/login_screen.dart';
import '../../../src/categories/views/categories_screen.dart';
import '../../../src/categories/views/category_screen.dart';
import '../../../src/home/views/home_screen.dart';
import '../../../src/notification/notification_screen.dart';
import '../../../src/onboarding/views/onboarding_screen.dart';
import '../../../src/search/views/search_screen.dart';
import '../../../src/splash/views/splash_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GoRouter _router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),

    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnBoardingScreen(),
    ),

    GoRoute(
      path: '/appentrypoint',
      builder: (context, state) => AppEntryPoint(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationScreen(),
    ),

    GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),

    GoRoute(
      path: '/categories',
      builder: (context, state) => const CategoriesScreen(),
    ),

    GoRoute(
      path: '/category',
      builder: (context, state) => const CategoryScreen(),
    ),

    // GoRoute(
    //   path: '/review',
    //   builder: (context, state) => const ReviewsPage(),
    // ),
    // GoRoute(
    //   path: '/policy',
    //   builder: (context, state) => const PolicyPage(),
    // ),
    // GoRoute(
    //   path: '/verification',
    //   builder: (context, state) => const VerificationPage(),
    // ),
    // GoRoute(
    //   path: '/help',
    //   builder: (context, state) => const HelpCenterPage(),
    // ),
    // GoRoute(
    //   path: '/orders',
    //   builder: (context, state) => const OrdersPage(),
    // ),
    // GoRoute(
    //   path: '/register',
    //   builder: (context, state) => const RegistrationPage(),
    // ),
    //
    // GoRoute(
    //   path: '/addaddress',
    //   builder: (context, state) => const AddAddress(),
    // ),
    //
    // GoRoute(
    //   path: '/addresses',
    //   builder: (context, state) => const AddressesListPage(),
    // ),
    //
    //
    //  GoRoute(
    //   path: '/tracking',
    //   builder: (context, state) => const TrackOrderPage(),
    // ),
    //
    // GoRoute(
    //   path: '/checkout',
    //   builder: (context, state) => const CheckoutPage(),
    // ),
    //
    //   GoRoute(
    //   path: '/successful',
    //   builder: (context, state) => const SuccessfulPayment(),
    // ),
    //
    //   GoRoute(
    //   path: '/failed',
    //   builder: (context, state) => const FailedPayment(),
    // ),
    //
    // GoRoute(
    //   path: '/product/:id',
    //   builder: (BuildContext context, GoRouterState state) {
    //     final productId = state.pathParameters['id'];
    //     return ProductPage(productId: productId.toString());
    //   },
    // ),
  ],
);

GoRouter get router => _router;
