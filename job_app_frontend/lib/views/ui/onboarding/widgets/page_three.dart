import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:job_app_frontend/constants/app_constants.dart';
import 'package:job_app_frontend/views/common/custom_outline_btn.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';
import 'package:job_app_frontend/views/ui/auth/login.dart';
import 'package:job_app_frontend/views/ui/auth/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: kLightBlue,
        child: Column(
          children: [
            Image.asset("assets/images/page3.png"),

            const HeightSpacer(size: 20),

            ReusableText(
              text: "Welcome to JobTub",
              style: appstyle(30, kLight, FontWeight.w600),
            ),

            const HeightSpacer(size: 15),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Text(
                "We help you find your dream job according to your skills and location and preferences to build your career",
                textAlign: TextAlign.center,
                style: appstyle(14, kLight, FontWeight.normal),
              ),
            ),

            const HeightSpacer(size: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomOutlineBtn(
                  onTap: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();

                    await prefs.setBool('entrypoint', true);
                    Get.to(() => LoginPage());
                  },
                  text: "Login",
                  width: width * 0.4,
                  height: height * 0.06,
                  color: kLight,
                ),

                GestureDetector(
                  onTap: () {
                    Get.to(() => const RegistrationPage());
                  },
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.4,
                    color: kLight,
                    child: Center(
                      child: ReusableText(
                        text: "SignUp",
                        style: appstyle(16, kLightBlue, FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const HeightSpacer(size: 30),
            ReusableText(
              text: "Continue as a guest",
              style: appstyle(16, kLight, FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
