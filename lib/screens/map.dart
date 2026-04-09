import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("images/mmap.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
        ),
          Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.black.withOpacity(.11),
        ),
        Positioned(
          bottom: 29.h,
          left: 21.w,
          right: 21.w,
          child: Container(
            padding: EdgeInsets.only(top: 20.h,bottom: 28.h, left: 22.w,right: 22.w),
            width: 333.w,
            height: 285.0480041503906.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 28.59.h),
                  blurRadius: 57.18,
                  spreadRadius: 0,
                  color: Color.fromRGBO(140, 136, 150, 0.13)
                )
              ]
          
          
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mytext(text: "Starbucks Order", color: Color.fromRGBO(49, 49, 49, 1), size: 21.sp, fw: FontWeight.w500),
                SizedBox(height: 17.7.h,),
                Row(
                  children: [
                    Icon(Icons.alarm,size: 27.5.sp,),
                    SizedBox(width: 4.44.w,),
                    Mytext(text: "30 minutes", color: Color.fromRGBO(18, 18, 18, 1), size: 13.32.sp, fw: FontWeight.w500),

                  ],
                ),
                SizedBox(height: 17.7.h,),
                Row(
                  children: [
                    Icon(Icons.location_history,size: 27.5.sp,),
                    SizedBox(width: 4.44.w,),
                    Mytext(text: "9224 Jailyn Terrace, block 2", color: Color.fromRGBO(18, 18, 18, 1), size: 13.32.sp, fw: FontWeight.w500),

                  ],
                ),
                SizedBox(height: 48.h,),
                                    
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(8.88.r),
                            child: Image.asset("images/person2.jpg",height: 42.624000549316406.h,
                            width: 42.624000549316406.w,fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 16.87.w,),
                          Container(
                            height: 44.4.h,
                            width: 229.10400390625.w,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8.88.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(Icons.phone,color: Colors.white,size: 21.312000274658203.sp,),
                              SizedBox(width: 3.w,),
                              Mytext(text: "Call Smith", color: Colors.white, size: 18.65.sp, fw: FontWeight.w500)
                            ],),
                          )

                        ],
                      )

              ],
            ),
          ),
        )

      ],
    );
  }
}