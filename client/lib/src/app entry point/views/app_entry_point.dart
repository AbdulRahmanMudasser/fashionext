import 'package:fashionext/core/common/utils/app_colors.dart';
import 'package:fashionext/src/app%20entry%20point/controllers/bottom_nav_notifier.dart';
import 'package:fashionext/src/cart/views/cart_screen.dart';
import 'package:fashionext/src/home/views/home_screen.dart';
import 'package:fashionext/src/profile/views/profile_screen.dart';
import 'package:fashionext/src/wishlist/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class AppEntryPoint extends StatelessWidget {
  AppEntryPoint({super.key});

  final List<Widget> pages = [
    const HomeScreen(),
    const WishlistScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavNotifier>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Stack(
            children: [
              pages[provider.index],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: AppColors.kOffWhite,
                  ),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    selectedFontSize: 12,
                    elevation: 0,
                    backgroundColor: AppColors.kOffWhite,
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    unselectedIconTheme: const IconThemeData(color: Colors.black38),
                    currentIndex: provider.index,
                    selectedItemColor: AppColors.kPrimary,
                    unselectedItemColor: AppColors.kGray,
                    onTap: (index) => provider.setIndex(index),
                    items: [
                      // Home Icon
                      BottomNavigationBarItem(
                        icon: provider.index == 0
                            ? const Icon(
                                MaterialCommunityIcons.home_outline,
                                color: AppColors.kPrimary,
                                size: 24,
                              )
                            : const Icon(
                                MaterialCommunityIcons.home_outline,
                                size: 24,
                              ),
                        label: "Home",
                      ),

                      // Wishlist Icon
                      BottomNavigationBarItem(
                        icon: provider.index == 1
                            ? const Icon(
                                MaterialCommunityIcons.heart_outline,
                                color: AppColors.kPrimary,
                                size: 24,
                              )
                            : const Icon(
                                MaterialCommunityIcons.heart_outline,
                                size: 24,
                              ),
                        label: "Wishlist",
                      ),

                      // Cart Icon
                      BottomNavigationBarItem(
                        icon: provider.index == 2
                            ? const Badge(
                                label: Text('9'),
                                child: Icon(
                                  MaterialCommunityIcons.shopping_outline,
                                  color: AppColors.kPrimary,
                                  size: 24,
                                ),
                              )
                            : const Badge(
                                label: Text('9'),
                                child: Icon(
                                  MaterialCommunityIcons.shopping_outline,
                                  size: 24,
                                ),
                              ),
                        label: "Cart",
                      ),

                      // Profile Icon
                      BottomNavigationBarItem(
                        icon: provider.index == 3
                            ? const Icon(
                                Ionicons.person_circle_outline,
                                color: AppColors.kPrimary,
                                size: 27,
                              )
                            : const Icon(
                                Ionicons.person_circle_outline,
                                size: 27,
                              ),
                        label: "Profile",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
