// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:job_app_frontend/controllers/exports.dart';
import 'package:job_app_frontend/views/common/exports.dart';
import 'package:job_app_frontend/views/common/height_spacer.dart';
import 'package:job_app_frontend/views/common/width_spacer.dart';
//import 'package:job_app_frontend/views/ui/mainscreen.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatefulWidget {
  
  const DrawerScreen({super.key, required this.indexSetter});
  final ValueSetter indexSetter;
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    return GestureDetector(
      onDoubleTap: () {
        ZoomDrawer.of(context)!.toggle();
      },
      child: Scaffold(
        backgroundColor: kLightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            drawerItems(
              AntDesign.home,
              "Home",
              0,
              zoomNotifier.currentIndex == 0 ? kLight : kLightGrey,
              zoomNotifier.currentIndex == 0 ? kLight : kLightGrey,
            ),
            const HeightSpacer(size: 20),

            drawerItems(
              Ionicons.ios_chatbubble_outline,
              "Chat",
              1,
              zoomNotifier.currentIndex == 1 ? kLight : kDarkGrey,
              zoomNotifier.currentIndex == 1 ? kLight : kDarkGrey,
            ),
            const HeightSpacer(size: 20),
            drawerItems(
              Fontisto.bookmark,
              "Bookmarks",
              2,
              zoomNotifier.currentIndex == 2 ? kLight: kDarkGrey,
              zoomNotifier.currentIndex == 2 ? kLight : kDarkGrey,
            ),
            const HeightSpacer(size: 20),

            drawerItems(
              MaterialCommunityIcons.devices,
              "Device Mgmt",
              3,
              zoomNotifier.currentIndex == 3 ? kLight : kDarkGrey,
              zoomNotifier.currentIndex == 3 ? kLight : kDarkGrey,
            ),

            const HeightSpacer(size: 20),

            drawerItems(
              FontAwesome5Regular.user_circle,
              "Profile",
              4,
              zoomNotifier.currentIndex == 4 ? kLight : kDarkGrey,
              zoomNotifier.currentIndex == 4 ? kLight : kDarkGrey,
            ),
          ],
        ),
      ),
    );
  }
  Widget drawerItems(
    IconData icon,
    String text,
    int index,
    Color color,
    Color txtcolor,
  ) {
    return GestureDetector(
      onTap: () {
        widget.indexSetter(index);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, bottom: 12),
        child: Row(
          children: [
            Icon(icon, color: color),
            const WidthSpacer(width: 12),
            ReusableText(
              text: text,
              style: appstyle(12, color, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
