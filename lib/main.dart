import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hiirize/extra/navigate.dart';
import 'package:hiirize/pages/homepage.dart';
// import 'package:hiirize/utils/constants.dart';
// import 'package:hiirize/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp( const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (ctx, child) {
          return const MaterialApp(
          
              debugShowCheckedModeBanner: false, home: HomePage());
        });
  }
}
