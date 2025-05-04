import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:job_app_frontend/constants/app_constants.dart';
import 'package:job_app_frontend/views/common/app_bar.dart';
import 'package:job_app_frontend/views/common/custom_outline_btn.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key, required this.title, required this.id});
  final String title;
  final int id;
  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: widget.title,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Entypo.bookmark),
            ),
          ],
          child: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(CupertinoIcons.arrow_left),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              children: [
                HeightSpacer(size: 30),
                Container(
                  width: width,
                  height: height * 0.27,
                  color: kLightGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user.png"),
                      ),
                      const HeightSpacer(size: 10),
                      ReusableText(
                        text: "Senior Flutter Developer",
                        style: appstyle(22, kDark, FontWeight.w600),
                      ),
                      const HeightSpacer(size: 5),
                      ReusableText(
                        text: "New York",
                        style: appstyle(16, kDarkGrey, FontWeight.normal),
                      ),
                      HeightSpacer(size: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           /// CustomOutlineBtn(text: text, color: color),
                          ],
                        ),
                      ),
                    ],
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
