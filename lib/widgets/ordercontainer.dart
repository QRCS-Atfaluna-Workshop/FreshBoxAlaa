import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class Ordercontainer extends StatelessWidget {
  final String image ;
  final String name ;
  final String price ;
  final String date ;
  final String status ;
   final void Function() onTap;

   Ordercontainer({super.key,  required this.name, required this.price, required this.date, required this.image, required this.status, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      height: 154.h,
      width: 325.w,
      decoration: BoxDecoration(
        color:Color(0xffFFFFFF) ,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 32.2.h),
            spreadRadius: 0,
            blurRadius: 64.39,
            color: Color.fromRGBO(140, 136, 150, 0.13),
          )
        ]
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Image.asset(image,height: 60.h,width: 60.w,),
          // SizedBox(width: 20.w,),
          Column(
            spacing: 3.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Mytext(text: name, color: Color.fromRGBO(61, 58, 69, 1), size: 17.sp, fw: FontWeight.w500)
           , Mytext(text: date, color: Color.fromRGBO(61, 58, 69, 1), size: 15.sp, fw: FontWeight.w300)
           , Mytext(text: status,
            color: status == "Deliverd" ?Color.fromRGBO(91, 196, 57, 1): Color.fromRGBO(61, 58, 69, 1), 
            size: 13.sp, fw: FontWeight.w500)
          ],),
          // SizedBox(width: 16.w,),
       Mytext(text:price, color: Color.fromRGBO(61, 58, 69, 1), size: 17.sp, fw: FontWeight.w500)


        ],)
    , SizedBox(height: 16.h,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            height: 32.h,
            width: 136.w,
            decoration: BoxDecoration(
              color: const Color(0xffEB6A58) ,
              borderRadius: BorderRadius.circular(8.r)
            ),
            child: Center(child: Mytext(text: "Re-order", color: Colors.white, size: 15.sp, fw: FontWeight.w500)),
          ),
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 32.h,
            width: 136.w,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(209, 207, 213, 1) ,
              borderRadius: BorderRadius.circular(8.r)
            ),
            child: Center(child: Mytext(text: "Rate", color: Colors.black, size: 15.sp, fw: FontWeight.w500)),
          ),
        ),
      ],
    )
      ],),
    );
  }
}