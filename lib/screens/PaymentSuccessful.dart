import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/myButton.dart';
import 'package:freshbox/widgets/mytext.dart';

class PaymentSuccessful extends StatelessWidget {
  const PaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 59.h,),
        maAppBar(),
        SizedBox(height: 102.h,),

        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 49.w),
          child: Image.asset("images/happy.png",height: 218.6827850341797.h,width: 277.w,fit: BoxFit.fill,),
        ),
        SizedBox(height: 16.32.h,),
        Mytext(text: "Congratulations!", color: Color.fromRGBO(17, 26, 44, 1), size: 23.sp, fw: FontWeight.w500)
     ,SizedBox(height: 3.h,),
     Mytext(text: "You successfully maked a payment\nenjoy our service!", color:
      Color.fromRGBO(18, 18, 18,.6), size: 17.sp, fw: FontWeight.w300,align: 
      TextAlign.center,),
      SizedBox(height: 202.h,),
      Center(child: MyButton(text: "Browse More", onTap: (){}))
     
      ],),
    );
  }
}









class maAppBar extends StatelessWidget {
  const maAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [ 
        SizedBox(width: 24.w,),
              InkWell(
                onTap: (){Navigator.pop(context);},
                child: Container(
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
                  child: Center(child: Icon(Icons.arrow_back_ios,size:20.sp,)),
                ),
              ),
              SizedBox(width: 9.w,),
               
                    Text(
                      'Payment Successful',
                      style:  TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 21.sp,
                        color: Color.fromRGBO(4, 12, 34, 1),
                      ),
                    ) ,
                     
               
               
               
               ],
              
    );
  }
}

