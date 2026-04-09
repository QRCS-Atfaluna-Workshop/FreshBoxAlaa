import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textformtitle extends StatelessWidget {
  final String text;


   textformtitle({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.black,
        fontSize: 17.sp,
        fontWeight:   FontWeight.w300,
        fontFamily: "Montserrat",
        
      ),
    );
  }
}