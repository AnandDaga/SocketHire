import 'package:flutter/material.dart';
import 'package:job_app_frontend/views/common/exports.dart';


class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(text: text, style: appstyle(20, kDark, FontWeight.w600)),

        GestureDetector(
          onTap: onTap,
          child: ReusableText(
            text: "View all",
            style: appstyle(18, kOrange, FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
