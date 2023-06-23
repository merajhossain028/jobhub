import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Color(kLightBlue.value),
      child: Column(
        children: [
          Image.asset('assets/images/page3.png'),
          const HeightSpacer(size: 20),
          ReusableText(
            text: "Welcome to Job Hunt",
            style: appstyle(
              30,
              Color(kLight.value),
              FontWeight.w600,
            ),
          ),
          const HeightSpacer(size: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget nunc ut dignissim. ",
              style: appstyle(
                14,
                Color(kLight.value),
                FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const HeightSpacer(size: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomOutlineBtn(
                onTap: () {},
                text: 'Login',
                width: width * 0.4,
                height: height * 0.06,
                color: Color(kLight.value),
              ),
              GestureDetector(
                onTap: null,
                child: Container(
                  width: width * 0.4,
                  height: height * 0.06,
                  color: Color(kLight.value),
                  child: Center(
                    child: ReusableText(
                      text: "Sign Up",
                      style: appstyle(
                        16,
                        Color(kLightBlue.value),
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const HeightSpacer(size: 30),
          ReusableText(
            text: "Continue as gust",
            style: appstyle(
              16,
              Color(kLight.value),
              FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
