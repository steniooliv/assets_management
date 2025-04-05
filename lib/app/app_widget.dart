import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => child ?? const SizedBox.shrink(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assets Management',
        theme: ThemeData(),
        home: const Scaffold(body: Column()),
      ),
    );
  }
}
