import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:job_app_frontend/constants/app_constants.dart';
import 'package:job_app_frontend/views/common/app_style.dart';
import 'package:job_app_frontend/views/common/reusable_text.dart';
import 'package:job_app_frontend/views/common/width_spacer.dart';

class VerticalTile extends StatelessWidget {
  const VerticalTile({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        height: height * 0.15,
        width: width,
        color: kLightGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: kLightGrey,
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/slack.png"),
                    ),
                    WidthSpacer(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          text: "Slack",
                          style: appstyle(20, kDark, FontWeight.w600),
                        ),
                        SizedBox(
                          width: width * 0.5,
                          child: ReusableText(
                            text: "Kotlin Developer",
                            style: appstyle(18, kDarkGrey, FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: kLight,
                      child: Icon(Ionicons.chevron_forward),
                    ),
                  ],
                ),
                
              ],
            ),
            Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Row(
                    children: [
                      ReusableText(
                        text: "20k",
                        style: appstyle(23, kDark, FontWeight.w600),
                      ),
                      ReusableText(
                        text: "/monthly",
                        style: appstyle(23, kDarkGrey, FontWeight.w600),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
