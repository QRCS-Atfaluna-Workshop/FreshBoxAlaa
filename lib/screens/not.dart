import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/favcontainer.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/notContainer.dart';

class Notification22 extends StatelessWidget {
  const Notification22({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
     padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 59.h,),
              MyAppBar(),
               SizedBox(height: 28.h,),
               Mytext(text: "Today (2 Offers)", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w300),
                SizedBox(height: 20.h,),
                Notcontainer(image: "images/order1.png", name: "Starbucks", name2: "Buy 1 get 1 free for small sizes\nuntil Nov 30, 2020"),
                SizedBox(height: 15.h,),
                Notcontainer(image: "images/order2.png", name: "Veg Biryani - 35% sale today",
                 name2: "Enter discount code NEW2021\nfor 35% off for Veg Biryani"),



               
          
          
            ],
          ),
        ),
      ),
      );
  }
}








class MyAppBar extends StatelessWidget {
  
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Mytext(text: "Notification", color: Color(0xff040C22), size: 21.sp, fw: FontWeight.w500),
       Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1), 
                      borderRadius: BorderRadius.circular(12.r), 
                      boxShadow: [
                        BoxShadow(
                          //shadow 1
                          color: Color.fromRGBO(140, 136, 150, 0.13), 
                          offset:  Offset(0, 14.71.h),
                          blurRadius: 44.12,
                          spreadRadius: 0,
                        ),
                        //shadow 2
                        //box-shadow: 0px 4.41px 20px 0px rgba(235, 106, 88, 0.14);
                        BoxShadow(
                          blurRadius: 20,
                          spreadRadius:0 ,
                          color: Color.fromRGBO(235, 106, 88, 0.14),
                          offset: Offset(0, 4.41.h)
                        )
                      ],
                    ),
                    child: Center(child: Icon(Icons.search,size: 20.sp,)),
                  ),
    
    ],);
  }
}