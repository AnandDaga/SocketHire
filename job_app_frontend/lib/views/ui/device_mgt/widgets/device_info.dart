import 'package:flutter/material.dart';
import 'package:job_app_frontend/views/common/custom_outline_btn.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';

class DevicesInfo extends StatelessWidget {
  const DevicesInfo({super.key, required this.location, required this.device, required this.platform, required this.date, required this.ipAddress});

  final String location;
  final String device;
  final String platform;
  final String date;
  final String ipAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableText(
          text: platform,
          style: appstyle(22, kDark, FontWeight.bold),
        ),
        ReusableText(text: device, style: appstyle(22, kDark, FontWeight.bold)),
        HeightSpacer(size: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  text: date,
                  style: appstyle(16, kDark, FontWeight.w400),
                ),
                ReusableText(
                  text: ipAddress,
                  style: appstyle(16, kDark, FontWeight.w400),
                ),
              ],
            ),
            CustomOutlineBtn(text: "Sign out", color: kOrange,height: height*0.05,width: width*0.3,),



          ],


        ),
      ],
    );
  }
}
