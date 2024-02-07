import 'package:movil_wrc_app/pages/home_page.dart';
import 'package:movil_wrc_app/pages/dashboard_page.dart';
import 'package:movil_wrc_app/pages/drivers_page.dart';
import 'package:movil_wrc_app/pages/calendar_page.dart';


import 'package:riverpod/riverpod.dart';
import 'package:go_router/go_router.dart';


class AppRoutes {
  static const String home = '/';
  static const String dashboard = '/dashboard';
  static const String calendar = '/calendar';
  static const String drivers = '/drivers';
  // Add more route names as needed
}
final routerProv = Provider((ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => DashboardPage(),
        ),
        GoRoute(
            path: '/drivers',
          builder: (context, state) => DriversPage(),
            ),
        GoRoute(
          path: '/calendar',
          builder: (context, state) => CalendarPage(),
          ),
      ],
    ));