import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Color(kDarkPurple.value),
      child: Column(
        children: [
          const HeightSpacer(size: 70),
          Image.asset('assets/images/page1.png'),
          const HeightSpacer(size: 40),
          Column(
            children: [
              ReusableText(
                text: "Find Your Dream Job",
                style: appstyle(
                  30,
                  Color(kLight.value),
                  FontWeight.w500,
                ),
              ),
              const HeightSpacer(size: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Text(
                  'We Help you to find your dream job and make your life better',
                  textAlign: TextAlign.center,
                  style: appstyle(
                    14,
                    Color(kLight.value),
                    FontWeight.normal,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
