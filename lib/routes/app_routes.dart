import 'package:flutter/material.dart';
import 'package:ucomm/features/dashboard/dashboard_screen.dart';
import 'package:ucomm/features/explore/explore.dart';
import 'package:ucomm/features/explore/product_item_screen.dart';
import 'package:ucomm/features/favorites/favorites_screen.dart';
import 'package:ucomm/features/filters/filter_screen.dart';
import 'package:ucomm/features/home/home_screen.dart';
import 'package:ucomm/features/login/login_screen.dart';
import 'package:ucomm/features/onboarding/onboarding_screen.dart';
import 'package:ucomm/features/order_accepted/order_accepted_screen.dart';
import 'package:ucomm/features/product_detail/product_detail_screen.dart';
import 'package:ucomm/features/search/search_screen.dart';
import 'package:ucomm/features/sign_up/sign_up_screen.dart';
import 'package:ucomm/features/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String onboardingScreen = '/onboarding_screen';
  static const String dashboard = '/dashboard';
  static const String homeScreen = '/home_screen';
  static const String productDetailScreen = '/product_detail_screen';
  static const String explorePage = '/explore_page';
  static const String beveragesScreen = '/beverages_screen';
  static const String searchScreen = '/search_screen';
  static const String filterScreen = '/filter_screen';
  static const String myCartPage = '/my_cart_page';
  static const String favoritesPage = '/facorites_page';
  static const String orderAcceptedScreen = '/order_accepted_scren';
  static const String accountPage = '/account_page';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/intialRoute';
  static const String productItemScreen = '/productItemScreen';

  static Map<String, WidgetBuilder> get routes => {
        initialRoute: (context) => const SplashScreen(),
        loginScreen: (context) => const LoginScreen(),
        signupScreen: (context) => const SignUpScreen(),
        onboardingScreen: (context) => const OnboardingScreen(),
        dashboard: (context) => DashboardScreen(),
        //  homeScreen: (context) => const ShopScreen(),
        // productDetailScreen: (context) =>  ProductDetailScreen(),
        // explorePage: (context) => ExploreScreen(),
        //  beveragesScreen: (context) => HomeScreen(),
        searchScreen: (context) => const SearchScreen(),
        // filterScreen: (context) => const FilterScreen(),
        //myCartPage: (context) => HomeScreen(),
        // favoritesPage: (context) => const FavoritesScreen(),
        orderAcceptedScreen: (context) => const OrderAcceptedScreen(),
        // accountPage: (context) => HomeScreen(),
        // appNavigationScreen: (context) => HomeScreen(),
        splashScreen: (context) => const SplashScreen(),
      };
}
