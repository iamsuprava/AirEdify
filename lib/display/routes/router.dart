import 'package:AirEdify/display/pages/home_pg.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // initial route is named "/"
    AutoRoute(page: HomePage, initial: true)
  ],
)
class $AppRouter {}
