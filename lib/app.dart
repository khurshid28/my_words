import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/splashView.dart';

class MyWordsApp extends StatefulWidget {
  const MyWordsApp({Key? key}) : super(key: key);

  @override
  State<MyWordsApp> createState() => _MyWordsAppState();
}

class _MyWordsAppState extends State<MyWordsApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'dosis',
          ),
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        );
      },
      child:  SplashView(),
    );

  }
}