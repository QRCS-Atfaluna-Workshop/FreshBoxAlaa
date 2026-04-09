import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Productcard extends StatelessWidget {
  final bool offer ;
  final String image ;
  final String title ;

   Productcard({super.key, required this.offer, required this.image, required this.title,});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.all(12.w),
            width: 154.w,
            height: 271.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 32.2.h),
                  blurRadius: 64.39,
                  spreadRadius: 0,
                  color: Color.fromRGBO(140, 136, 150, 0.13)
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(image,width: 128.w,height: 128.h,fit: BoxFit.fill,)),
              offer ?        Positioned(
                        top: 6.h,
                        left: 6.w,
                        child: Container(
                          height: 20.h,
                          width:53.076927185058594.w ,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 106, 88, 1),
                            borderRadius: BorderRadius.circular(4.52.r),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            Icon((Icons.star),color: Colors.white,size: 15.38461685180664.sp,),
                            SizedBox(width: 2.83.w,),
                            Text("-50",style:
                             TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 11.3.sp,
                            fontWeight: FontWeight.w500,fontFamily: "Montserrat"
      ),)
                          ],),
                        ),
                      ):SizedBox(height: 0,width: 0,)
                  ],
                ),
                SizedBox(height: 10.h,),
                Text(title,style: TextStyle(
                  color: Color.fromRGBO(18, 18, 18, 1),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat"
                ),),
                SizedBox(height: 8.h,),
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
        
        
                ],),
                 SizedBox(height: 8.h,),
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
                  ),
                  ),Spacer(),
                  Icon(Icons.favorite,color: Color.fromRGBO(62, 62, 62, 0.6),size: 24.sp,)
        
        
                ],)
              ],
            ),
      
          );
  }
}