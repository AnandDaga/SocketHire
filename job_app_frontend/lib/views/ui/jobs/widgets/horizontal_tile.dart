import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';
import 'package:job_app_frontend/views/common/width_spacer.dart';

class JobHorizontalTile extends StatelessWidget {
  const JobHorizontalTile({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),

        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          width: width * 0.7,
          height: height * 0.27,
          color: kLightGrey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(                     
                    backgroundImage: AssetImage("assets/images/Facebook.png"),
                  ),
                  WidthSpacer(width: 15.w),
                  ReusableText(
                    text: "Facebook",
                    style: appstyle(26, kDark, FontWeight.w600),
                  ),
                ],
              ),

              HeightSpacer(size: 15.h),
              ReusableText(
                text: "Senior Flutter Developer ",
                style: appstyle(20, kDark, FontWeight.w600),
              ),
              ReusableText(
                text: "Washington DC",
                style: appstyle(16, kDarkGrey, FontWeight.w600),
              ),
              HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ReusableText(
                        text: "15k",
                        style: appstyle(23, kDark, FontWeight.w600),
                      ),
                      ReusableText(
                        text: "/montly",
                        style: appstyle(23, kDarkGrey, FontWeight.w600),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: kLight,
                    child: const Icon(Ionicons.chevron_forward),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
