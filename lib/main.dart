import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:AirEdify/display/routes/router.gr.dart';
import 'package:AirEdify/value/values.dart';
import 'package:url_strategy/url_strategy.dart';

import 'theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(AirEdify());
}

class AirEdify extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: MaterialApp.router(
        title: StringConst.APP_NAME,
        theme: Themes.lightThemeData,
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
