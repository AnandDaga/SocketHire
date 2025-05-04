import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:job_app_frontend/views/common/app_bar.dart';
import 'package:job_app_frontend/views/common/drawer/drawer_widget.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';
import 'package:job_app_frontend/views/common/width_spacer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: "Profile",
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: width,
              height: height * 0.12,
              color: kLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: CachedNetworkImage(
                          width: 80.w,
                          height: 100.h,
                          imageUrl:
                              "https://m.media-amazon.com/images/I/31o-VWlOtKL.jpg",
                        ),
                      ),
                      WidthSpacer(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReusableText(
                            text: "PM Narendra Modi",
                            style: appstyle(20, kDark, FontWeight.w600),
                          ),
                          HeightSpacer(size: 2),
                          Row(
                            children: [
                              const Icon(
                                MaterialIcons.location_pin,
                                color: kDarkGrey,
                              ),
                              WidthSpacer(width: 5),
                              ReusableText(
                                text: "Washington DC",
                                style: appstyle(16, kDarkGrey, FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  GestureDetector(
                    onTap: () {},
                    child: Icon(Feather.edit, size: 18),
                  ),
                ],
              ),
            ),
            HeightSpacer(size: 20),
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * .12,
                  color: kLightGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.w),
                        width: 60.w,
                        height: 70.h,
                        color: kLight,
                        child: const Icon(
                          FontAwesome5Regular.file_pdf,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                            text: "Resume from SocketHire",
                            style: appstyle(18, kDark, FontWeight.w500),
                          ),
                          ReusableText(
                            text: "SocketHire Resume",
                            style: appstyle(16, kDarkGrey, FontWeight.w500),
                          ),
                        ],
                      ),
                      WidthSpacer(width: 1),
                    ],
                  ),
                ),
                Positioned(
                  top: 2.h,
                  right: 5.w,
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableText(
                      text: "Edit",
                      style: appstyle(16, kOrange, FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            HeightSpacer(size: 20),
            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: height * 0.06,
              color: kLightGrey,
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                  text: "anandop@gmail.com",
                  style: appstyle(16, kDark, FontWeight.w600),
                ),
              ),
            ),

            const HeightSpacer(size: 20),

            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: height * 0.06,
              color: kLightGrey,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/usa.svg",
                      width: 20.h,
                      height: 20.h,
                    ),
                    const WidthSpacer(width: 12),
                    ReusableText(
                      text: "+1354398305374",
                      style: appstyle(16, kDark, FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            HeightSpacer(size: 20),
            Container(
              color: kLightGrey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.h),
                    child: ReusableText(
                      text: "Skills",
                      style: appstyle(16, kDark, FontWeight.w600),
                    ),
                  ),
                  HeightSpacer(size: 3),
                  SizedBox(
                    height: height * 0.5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: ListView.builder(
                        itemCount: 5,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          String skill = skills[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical:10.h),
                              width: width,
                              height: height * 0.06,
                              color: kLight,
                              
                              child: ReusableText(
                                text: skill,
                                style: appstyle(16, kDark, FontWeight.normal),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
