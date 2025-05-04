import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: kDarkPurple,
        child: Column(
          children: [
            HeightSpacer(size: 70),

            Image.asset("assets/images/page1.png"),

            HeightSpacer(size: 50),

            Column(
              children: [
                ReusableText(
                  text: "Find Your Dream Job",
                  style: appstyle(30, kLight, FontWeight.w500),
                ),
                HeightSpacer(size: 20),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Text(
                    "We help you find your dream job according to your skills and location and preferences to build your career",
                    textAlign: TextAlign.center,
                    style: appstyle(14, kLight, FontWeight.normal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
