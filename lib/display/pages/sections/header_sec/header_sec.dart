import 'package:flutter/material.dart';
import 'package:AirEdify/display/pages/sections/header_sec/header_sec_mobile.dart';
import 'package:AirEdify/display/pages/sections/header_sec/header_sec_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      refinedBreakpoints: RefinedBreakpoints(),
      builder: (context, sizingInformation) {
        double screenWidth = sizingInformation.screenSize.width;
        if (screenWidth <= RefinedBreakpoints().tabletSmall) {
          return HeaderSectionMobile();
        } else {
          return HeaderSectionWeb();
        }
      },
    );
  }
}
