import 'package:flutter/material.dart';
import 'package:AirEdify/display/layout/adaptive.dart';
import 'package:AirEdify/display/widgets/content_area.dart';
import 'package:AirEdify/display/widgets/airedify_info_sec.dart';
import 'package:AirEdify/value/values.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({Key? key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = widthOfScreen(context);
    double screenHeight = heightOfScreen(context);
    double contentAreaWidth = screenWidth * 0.8;
    double contentAreaHeight = screenHeight * 1.0;

    return ContentArea(
      width: contentAreaWidth,
      height: contentAreaHeight,
      child: Row(
        children: [
          Stack(
            children: const [
              Card(
                child: NimbusInfoSection1(
                  sectionTitle: StringConst.MY_TESTIMONIALS,
                  title1: StringConst.TESTIMONIALS_SECTION_TITLE,
                  hasTitle2: false,
                  body: StringConst.TESTIMONIALS_1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
