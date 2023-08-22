import 'package:adhd/Pages/intro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() 
async {
  await ScreenUtil.ensureScreenSize();
  runApp(ADHD());
}
class ADHD extends StatelessWidget {
   ADHD({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: const Size(375, 812),
        );
        return child!;
      },
      home: Intro(),
    );
  }
}
