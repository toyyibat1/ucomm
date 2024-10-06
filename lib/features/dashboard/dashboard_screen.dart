import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/features/account/account_screen.dart';
import 'package:ucomm/features/cart/cart_screen.dart';
import 'package:ucomm/features/dashboard/notifier/dashboard_notifier.dart';
import 'package:ucomm/features/explore/explore.dart';
import 'package:ucomm/features/favorites/favorites_screen.dart';
import 'package:ucomm/features/home/home_screen.dart';

class DashboardScreen extends ConsumerWidget {
  final List<String> _iconList = [
    ImageConstant.shop,
    ImageConstant.explore,
    ImageConstant.cart,
    ImageConstant.favorite,
    ImageConstant.account,
  ];

  final List<String> _labels = [
    'Shop',
    'Explore',
    'Cart',
    'Favorite',
    'Account',
  ];

  final List<Widget> _pages = [
    const ShopPage(),
    const ExplorePage(),
    const CartPage(),
    const FavoritesPage(),
    const AccountPage(),
  ];

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the current selected index
    final selectedIndex = ref.watch(dashboardProvider);

    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          ref.read(dashboardProvider.notifier).setIndex(index);
        },
        selectedItemColor: const Color(0XFF1A48FF),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: List.generate(
          _iconList.length,
          (index) => BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: _iconList[index],
              color: selectedIndex == index ? const Color(0XFF1A48FF) : Colors.grey,
            ),
            label: _labels[index],
          ),
        ),
      ),
    );
  }
}
