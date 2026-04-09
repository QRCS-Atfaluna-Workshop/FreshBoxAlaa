import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/favcontainer.dart';
import 'package:freshbox/widgets/mytext.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 59.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: MyAppBar(),
             
            ),
             SizedBox(height: 33.h,),
              FavContainer(image: "images/Rectangle 29.png",name: "Fresh Sandwitch",price: "12\$",),
              SizedBox(height: 14.h,),
              FavContainer(image: "images/fav2.png",name: "Grilled Sandwitch",price: "10\$",),
              SizedBox(height: 14.h,),
              FavContainer(image: "images/fav3.png",name: "Banana Sandwitch",price: "22\$",),
              SizedBox(height: 14.h,),
        
        
          ],
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
      Mytext(text: "Favourite", color: Color(0xff040C22), size: 21.sp, fw: FontWeight.w500),
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