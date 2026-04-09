import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class MyButton extends StatelessWidget {
  final Color color ;
  final String text;
  final void Function() onTap;
   MyButton({super.key, required this.text, required this.onTap,  this.color = const Color(0xffEB6A58)});

  @override
  
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: 325.w,
        decoration: BoxDecoration(
          color:color ,
          borderRadius: BorderRadius.circular(8.r)
        ),
        child: Center(child: Mytext(text: text, color: Colors.white, size: 21.sp, fw: FontWeight.w500)),
      ),
    );
  }
}