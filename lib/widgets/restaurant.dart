import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class NearbyRestaurant extends StatelessWidget {
  final String image ;
  final String title ;
  final String km ;
  final String open ;
  final String location ;
   NearbyRestaurant({super.key, required this.image, required this.km, required this.open, required this.location, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: EdgeInsets.all(12.w),
        margin: EdgeInsets.only(right: 25.w,left: 25.w),
        height: 222.h,
        width: 325.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusGeometry.circular(10.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 32.h),
              blurRadius: 64.39,
              spreadRadius: 0,
              color: Color(0xff8C889621).withOpacity(.13)
            )
          ]
      
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                child: Image.asset(image,height: 132.h,width: 301.w,fit: BoxFit.fill,)),
                Container(
                  height: 132.h,width: 301.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(10.r),
                    color: Colors.black.withOpacity(.3),

                  ),
                  

                )
                ,Positioned(
                  bottom: 14.h,
                  left: 23.w,
                  
                  child: Container(
                    height: 26.h,
                    width: 79.w,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.7),
                      borderRadius: BorderRadius.circular(7.r)
                    ),
                    child:Center(child: Mytext(text: km, color: Colors.black, size: 15.sp, fw: FontWeight.w500)),
                  ))
            ],
          ),
          SizedBox(height: 12.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mytext(text: title, color: Colors.black, size: 17.sp, fw: FontWeight.w500),
              Row(children: [
                  Icon(Icons.star_border,size: 20.533332824707.sp
                  ,color: Color.fromRGBO(91, 196, 57, 1),
                  ),
                  SizedBox(width: 2.w,),
                  Text("4.5",style: TextStyle(
                    color: Color.fromRGBO(91, 196, 57, 1),
                    fontSize: 15.sp,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),)
        
                ],)

            ],
          )
,SizedBox(height: 6.h,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
   Mytext(text: location, color: Color(0xff3E3E3E99).withOpacity(.67), size: 15.sp, fw: FontWeight.w500),
    Mytext(text: open, color: Color(0xffEB6A58), size: 15.sp, fw: FontWeight.w500),
],)


        ],),
      ),
    );
  }
}