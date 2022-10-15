import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:expense_tracking/screens/dashboard/dashboard_tab.dart';
import 'package:expense_tracking/screens/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      // initial: true,
      page: StartUpScreen,
    ),
    AutoRoute(
      initial: true,
      page: EmptyRouterPage,
      name: 'AuthRouter', // to use this when wanna to replace route
      children: [
        AutoRoute(name: 'LoginRouter', page: LoginScreen, initial: true),
        AutoRoute(name: 'SignUpRouter', page: SignUpScreen),
      ],
    ),
    AutoRoute(
      page: DashboardTab,
      name: 'DashboardRouter',
      // initial: true,
      children: [
        AutoRoute(name: 'HomeRouter', page: HomeScreen, initial: true),
        AutoRoute(name: 'SettingRouter', page: SettingScreen),
      ],
    ),
    AutoRoute(
      page: EmptyRouterPage,
      name: 'SettingRoute',
      children: [
        AutoRoute(name: 'MyAccountRouter', page: MyAccountScreen),
        AutoRoute(name: 'MyWalletsRouter', page: MyWalletsScreen),
        AutoRoute(name: 'CategoriesRouter', page: CategoriesScreen),
        AutoRoute(name: 'LanguageRouter', page: LanguageScreen),
      ],
    ),
  ],
)
class $AppRouter {}
