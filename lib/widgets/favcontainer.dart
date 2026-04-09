import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class FavContainer extends StatelessWidget {
  final String image;
  final String price;
  final String name;
   FavContainer({super.key, required this.image, required this.price, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 23.w,right: 27.w),
      padding: EdgeInsets.all(12.w),
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
        child: Image.asset(image,height: 90.h,width: 90.w,fit: BoxFit.fill,)),
      SizedBox(width: 14.w,),
      Container(
        height: 90.h,
        child: Column(
          spacing: 9.h,
          mainAxisAlignment: MainAxisAlignment.center,
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Mytext(text: price, color: Color.fromRGBO(242, 99, 51, 1), size: 21.sp, fw: FontWeight.w500),
            Mytext(text: name, color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w300),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [ Icon(Icons.star_border,size: 20.533332824707.sp
                    ,color: Color.fromRGBO(91, 196, 57, 1),
                    ),
                    SizedBox(width: 2.w,),
                    Text("4.5",style: TextStyle(
                      color: Color.fromRGBO(91, 196, 57, 1),
                      fontSize: 15.sp,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                    ),
                    ),],),
                 SizedBox(width: 30.w,),
                    Row(children: [
                       Icon(Icons.alarm,size: 20.sp
                    ,color: Colors.grey,
                    ),
                    SizedBox(width:2.w,),
                    Text("30 Min",style: TextStyle(
                      color: Color.fromRGBO(62, 62, 62, 0.6),
                      fontSize: 15.09.sp,
                      fontFamily: "Montserrat",
                       fontWeight: FontWeight.w500,
                    ),)
        
        
                    ],)
        
          ],
        )        ],
        
        ),
      )
    
    ,Icon(Icons.cancel,color: Colors.black,size: 30.sp,)
    ],),


    );
  }
}