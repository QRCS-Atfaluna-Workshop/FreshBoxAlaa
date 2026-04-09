import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class Notcontainer extends StatelessWidget {
  final String image;

  final String name;
  final String name2;
   Notcontainer({super.key, required this.image, required this.name, required this.name2});
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(20.w),
      width: 325.w,
      height: 114.h,
      decoration: BoxDecoration(
        color: Colors.white
,
borderRadius: BorderRadius.circular(10.r)  ,
boxShadow: [
  BoxShadow(
    offset: Offset(0, 32.2.h),
    blurRadius: 64.39,
    spreadRadius: 0,
    color: Color.fromRGBO(140, 136, 150, 0.13)
  )
]
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10.r),
        child: Image.asset(image,height: 60.h,width: 60.w,fit: BoxFit.fill,)),
      // SizedBox(width: 20.w,),
      Container(
        height: 90.h,
        child: Column(
          spacing: 9.h,
          mainAxisAlignment: MainAxisAlignment.center,
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(text: name, color: Color.fromRGBO(18, 18, 18, 1), size: 15.sp, fw: FontWeight.w500),
            Mytext(text: name2, color: Color.fromRGBO(61, 58, 69, 1), size: 13.sp, fw: FontWeight.w300),
          ])


    )
    ]));
  }
}