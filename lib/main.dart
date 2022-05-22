import 'package:flutter/material.dart';
import 'package:layout/layout.dart';
import 'package:AirEdify/display/routes/router.gr.dart';
import 'package:AirEdify/value/values.dart';

import 'theme.dart';

void main() {
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
