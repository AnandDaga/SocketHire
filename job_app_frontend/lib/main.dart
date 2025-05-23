import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_app_frontend/controllers/exports.dart';
//import 'package:job_app_frontend/views/ui/mainscreen.dart';
import 'package:job_app_frontend/views/ui/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';

import 'views/common/exports.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
 
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => OnBoardNotifier()),
    ChangeNotifierProvider(create: (context) => LoginNotifier()),
    ChangeNotifierProvider(create: (context) => ZoomNotifier()),
    ChangeNotifierProvider(create: (context) => SignUpNotifier()),
    ChangeNotifierProvider(create: (context) => JobsNotifier()),
    ChangeNotifierProvider(create: (context) => BookMarkNotifier()),
    ChangeNotifierProvider(create: (context) => ImageUpoader()),
    ChangeNotifierProvider(create: (context) => ProfileNotifier()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dbestech JobHub',
            theme: ThemeData(
              scaffoldBackgroundColor: kLight,
              iconTheme: IconThemeData(color: kDark),
              primarySwatch: Colors.grey,
            ),
            home: OnBoardingScreen(),
          );
        });
  }
}
