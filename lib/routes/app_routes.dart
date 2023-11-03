import 'package:ecom/presentation/splash_screen/splash_screen.dart';
import 'package:ecom/presentation/splash_screen/binding/splash_binding.dart';
import 'package:ecom/presentation/login_screen/login_screen.dart';
import 'package:ecom/presentation/login_screen/binding/login_binding.dart';
import 'package:ecom/presentation/register_screen/register_screen.dart';
import 'package:ecom/presentation/register_screen/binding/register_binding.dart';
import 'package:ecom/presentation/main_landing_screen/main_landing_screen.dart';
import 'package:ecom/presentation/main_landing_screen/binding/main_landing_binding.dart';
import 'package:ecom/presentation/product_discover_screen/product_discover_screen.dart';
import 'package:ecom/presentation/product_discover_screen/binding/product_discover_binding.dart';
import 'package:ecom/presentation/product_search_screen/product_search_screen.dart';
import 'package:ecom/presentation/product_search_screen/binding/product_search_binding.dart';
import 'package:ecom/presentation/product_detail_page_screen/product_detail_page_screen.dart';
import 'package:ecom/presentation/product_detail_page_screen/binding/product_detail_page_binding.dart';
import 'package:ecom/presentation/cart_screen/cart_screen.dart';
import 'package:ecom/presentation/cart_screen/binding/cart_binding.dart';
import 'package:ecom/presentation/profile_profile_info_tab_container_screen/profile_profile_info_tab_container_screen.dart';
import 'package:ecom/presentation/profile_profile_info_tab_container_screen/binding/profile_profile_info_tab_container_binding.dart';
import 'package:ecom/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ecom/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String mainLandingScreen = '/main_landing_screen';

  static const String productDiscoverScreen = '/product_discover_screen';

  static const String productSearchScreen = '/product_search_screen';

  static const String productDetailPageScreen = '/product_detail_page_screen';

  static const String cartScreen = '/cart_screen';

  static const String profileProfileInfoPage = '/profile_profile_info_page';

  static const String profileProfileInfoTabContainerScreen =
      '/profile_profile_info_tab_container_screen';

  static const String profileMyOrdersPage = '/profile_my_orders_page';

  static const String profileSecurityPage = '/profile_security_page';

  static const String profileAddressDetailsPage =
      '/profile_address_details_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: mainLandingScreen,
      page: () => MainLandingScreen(),
      bindings: [
        MainLandingBinding(),
      ],
    ),
    GetPage(
      name: productDiscoverScreen,
      page: () => ProductDiscoverScreen(),
      bindings: [
        ProductDiscoverBinding(),
      ],
    ),
    GetPage(
      name: productSearchScreen,
      page: () => ProductSearchScreen(),
      bindings: [
        ProductSearchBinding(),
      ],
    ),
    GetPage(
      name: productDetailPageScreen,
      page: () => ProductDetailPageScreen(),
      bindings: [
        ProductDetailPageBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: profileProfileInfoTabContainerScreen,
      page: () => ProfileProfileInfoTabContainerScreen(),
      bindings: [
        ProfileProfileInfoTabContainerBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
