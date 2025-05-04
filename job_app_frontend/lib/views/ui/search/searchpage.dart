import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/ui/search/widgets/custom_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOrange,
        iconTheme: IconThemeData(color: kLight),
        title: CustomField(
          hintText: "Search for a job",
          controller: search,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: Icon(AntDesign.search1),
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/optimized_search.png"),
            ReusableText(
              text: "Start Searching For Jobs",
              style: appstyle(24, kDark, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
