import 'package:flutter/material.dart';
import 'package:job_app_frontend/constants/app_constants.dart';
import 'package:job_app_frontend/views/common/app_style.dart';
import 'package:job_app_frontend/views/common/reusable_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text, this.color});
  final void Function()? onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kOrange,
        height: height * 0.065,
        width: width,
        child: Center(
          child: ReusableText(text: text, style: appstyle(16, color??kLight, FontWeight.w600)),
        ),
      ),
    );
}
}
