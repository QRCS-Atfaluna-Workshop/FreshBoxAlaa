

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/myButton.dart';
import 'package:freshbox/widgets/mytext.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 59.h,),
          maAppBar(),
          SizedBox(height: 30.h,),
          Center(child: Mastercard()),
          SizedBox(height: 20.h,),
          Center(child: VisaCard()),
          SizedBox(height: 20.h,),
          Center(child: PayPal()),
          SizedBox(height: 40.h,),
            Padding(
                 padding:  EdgeInsets.only(left: 25.w),
                 child: Text("Order Review",style: TextStyle(
                     color: Color.fromRGBO(18, 18, 18, 1),
                     fontFamily: "Montserrat",
                     fontWeight: FontWeight.w500,
                     fontSize: 17.sp
                    ),),
               ),
          SizedBox(height: 23.h,),
          
          
          
          
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
            spacing: 16.h,
            children: [
              //r1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Full Vegie Salad (1 items)",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize: 15.sp,fontWeight: FontWeight.w300),),
                 Text("10\$",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
              
                ],
              
              ),
            //r2
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Toasted Sandwich (1 items)",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
                 Text("10\$",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
              
                ],
              
              ),
            //r3
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
                 Text("5\$",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
              
                ],
              
              ),
            //r4
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
                 Text("-8\$",style: TextStyle(color: Color.fromRGBO(54, 61, 78, 1),fontFamily: "Montserrat",fontSize:  15.sp,fontWeight: FontWeight.w300),),
              
                ],
              
              ),
                 //total row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Price",style: TextStyle(
                        color: Color.fromRGBO(4, 12, 34, 1),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        fontSize: 21.sp
                      ),),
                      Text("17\$",style: TextStyle(
                        color: Color.fromRGBO(4, 12, 34, 1),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 21.sp
                      ),),
              ],
            )
            ],
                ),
          )
         
         
           ,    SizedBox(height: 66.h,),
           Center(child: MyButton(text: "17\$ Pay Now", onTap: (){})),
           SizedBox(height: 29.h,),
        
        
         
             
        ],),
      ),
    );
  }
}





class PayPal extends StatelessWidget {
  const PayPal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: Colors.white
        ,borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 32.2.h),
            color: Color.fromRGBO(140, 136, 150, 0.13),
            spreadRadius: 0,
            blurRadius: 64.39
    
          )
        ]
    
      ),
      child: Row(
       
        children: [
          SizedBox(width: 25.w,),
          Image.asset("images/paypal.png"),

          SizedBox(width: 51.w,),
    
          Mytext(text: "PayPal", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w300),
          SizedBox(width: 118.w,),
          Container(height: 24.sp,width: 24.sp,
          decoration: BoxDecoration(
            color: Color.fromRGBO(61, 58, 69, 1),
            shape: BoxShape.circle
          ),)
        ],
      ),
    );
  }
}

class VisaCard extends StatelessWidget {
  const VisaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: Colors.white
        ,borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 32.2.h),
            color: Color.fromRGBO(140, 136, 150, 0.13),
            spreadRadius: 0,
            blurRadius: 64.39
    
          )
        ]
    
      ),
      child: Row(

        children: [
          SizedBox(width: 25.w,),
          Image.asset("images/visa.png"),
          SizedBox(width: 21.w,),
    
          Mytext(text: "Visa Card", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w300),
        SizedBox(width: 97.w,),
          Container(height: 24.sp,width: 24.sp,
          decoration: BoxDecoration(
            color: Color.fromRGBO(61, 58, 69, 1),
            shape: BoxShape.circle
          ),)
        ],
      ),
    );
  }
}








class Mastercard extends StatelessWidget {
  const Mastercard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: Colors.white
        ,borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 32.2.h),
            color: Color.fromRGBO(140, 136, 150, 0.13),
            spreadRadius: 0,
            blurRadius: 64.39
    
          )
        ]
    
      ),
      child: Row(

        children: [
          SizedBox(width: 25.w,),
          Image.asset("images/mastercard.png"),
          SizedBox(width: 36.w,),
    
          Mytext(text: "Mastercard", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w300),
        SizedBox(width: 80.w,),
          Container(height: 24.sp,width: 24.sp,
          decoration: BoxDecoration(
            color: Color.fromRGBO(61, 58, 69, 1),
            shape: BoxShape.circle
          ),)
        ],
      ),
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
                      'Payment Method',
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

