import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/myButton.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/mytextForm.dart';
import 'package:freshbox/widgets/textformtitle.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showOTP= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      body: Stack(
        children: [
          //all the bodyy :)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 67.h,),
              Center(child: Image.asset("images/Group 2738.png",width: 144.80999755859375.w,height: 22.694101333618164.h,fit: BoxFit.fill,)),
                SizedBox(height:38.31.h,),
                //titles
                Padding(
                  padding:  EdgeInsets.only(left: 27.w),
                  child: Mytext(text: "Let’s get Started", color:  Color.fromRGBO(17, 26, 44, 1), size: 21.sp, fw: FontWeight.w500),
                ),
                SizedBox(height:4.h,),
                 Padding(
                  padding:  EdgeInsets.only(left: 25.w),
                  child: Mytext(text: "Create an account to continue!", 
                  color:  Color.fromRGBO(18, 18, 18, .6), size: 15.sp, fw: FontWeight.w500),
                 
                ),
                SizedBox(height:24.h,),
                /////forms ya alaa
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w),
          
          
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textformtitle(text: "Username",),
                       SizedBox(height:12.h,),
                      MyTextFormF(text: "Create your username",),
                      SizedBox(height:20.h,),
                      textformtitle(text: "Email Id",),
                       SizedBox(height:12.h,),
                      MyTextFormF(text: "Enter your e-mail",),
                      SizedBox(height:20.h,),
                      textformtitle(text: "Password",),
                       SizedBox(height:12.h,),
                      MyTextFormF(text: "Create your password",suff: true,),
                      SizedBox(height:30.h,),
                      Center(child: MyButton(text: "Sign Up", onTap: (){
                        setState(() {
                          showOTP=true;
                        });
                      })),
                      SizedBox(height:20.h,),
                      ///////////////////
                      //////Already have an account?
            ///  ///Already have an account?
            /// 
            /// 
            /// 
            Center(
              child: RichText(
              text: TextSpan(
          text: "Already have an account? ",
          style: TextStyle(
             color: Colors.black,
              fontSize: 17.sp,
              fontWeight:   FontWeight.w300,
              fontFamily: "Montserrat",
          ),
          children: [
            TextSpan(
              text: "Sign In",
              style: TextStyle(
                color: Color(0xffEB6A58),
              fontSize: 17.sp,
              fontWeight:   FontWeight.w500,
              fontFamily: "Montserrat",
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                  /////////////////////////////
                },
            ),
          ],
              ),
              ),
          
            ),
                      SizedBox(height:20.h,),
                      Center(
              child: googlefacebook(color: Colors.white, image: "images/Group 91.png", text: "Continue With Google",
               textcolor: Color(0xff111A2C)),
            ),
             SizedBox(height:20.h,),
               Center(
           child: googlefacebook(color: Color(0xff4267B2), image: "images/Vector.png", text: "Continue With Facebook",
              textcolor:Colors.white),
               ),
                    ],
                  ),
                ),
          
            ],
          ),
      
      
      
      
      
      
      showOTP?
       Container(
        height: double.infinity,
       width: double.infinity,
       color: Colors.black.withOpacity(.6),
       child: Center(
        ////////////////////////////////
        child: OTPpop()),
       
       )
        :SizedBox(height: 0,width: 0,)
       ],
      ));
  }
}

class OTPpop extends StatelessWidget {
  const OTPpop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      height: 364.h,
      width: 333.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 28.59.h),blurRadius: 57.18,spreadRadius: 0,color: Color(0xff8C889621).withOpacity(.13)
                  )
                ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mytext(text: "OTP Authentication", color: Color(0xff313131), size: 19.18.sp, fw: FontWeight.w500)
    ,         SizedBox(height: 7.h,),
          Mytext(text: "An authentication code has been\nsent to alaaazoom19.com", 
          color: Color(0xff000000).withOpacity(.9), size: 15.sp, fw: FontWeight.w300)
    ,         SizedBox(height: 37.3.h,),
    
        enterCode(),
        SizedBox(height: 17.76.h,),
         ResendCode(),
      SizedBox(height:60.h,),
      Center(child: MyButton(text: "Continue", onTap: (){}))
    
    
    
        ],
      ),
    );
  }
}

class ResendCode extends StatelessWidget {
  const ResendCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RichText(
        text: TextSpan(
          text: "Didn’t receive code. ",
          style: TextStyle(
             color: Colors.black,
              fontSize: 15.1.sp,
              fontWeight:   FontWeight.w300,
              fontFamily: "Montserrat",
          ),
          children: [
            TextSpan(
              text: "Resend (51s)",
              style: TextStyle(
                color: Color(0xffEB6A58),
              fontSize: 15.1.sp,
              fontWeight:   FontWeight.w500,
              fontFamily: "Montserrat",
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  
    
     /////////////////////////////
                },
            ),
          ],
        ),
        ),
    
      );
  }
}

class enterCode extends StatelessWidget {
  const enterCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return Container(
          margin: EdgeInsets.all(5.w),
          height: 47.h,
          width: 47.w,
           decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
    offset: Offset(0, 28.4.h),
    blurRadius: 56.83,
    spreadRadius: 0,
    color: Color(0xff8C889600).withOpacity(.02),
              ),
            ],
          ),
          child: TextField(
            
            
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.sp,color: Colors.black,fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number, 
            maxLength: 1, 
            decoration: InputDecoration(
              counterText: "",
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.88.r),
    borderSide: BorderSide(color: Color(0xffD1CFD5), width: .9.w),
              ),
              focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.88.r),
    borderSide: BorderSide(color: Colors.blue, width: 1.2.w),
              ),
            ),
          ),
         
        );
      }),
    );
  }
}


class googlefacebook extends StatelessWidget {
  final Color color;
  final Color textcolor;
  final String image;
  final String text;
   googlefacebook({
    super.key, required this.color, required this.image, required this.text, required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 325.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
    
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,height: 16.h,width: 16.w,fit: BoxFit.fill,),
          SizedBox(width: 3.w,),
          Mytext(text: text, color: textcolor, size: 15.sp, fw: FontWeight.w300),
        ],
      ),
    );
  }
}



            // Row(
            //   children: List.generate(5, (index){
            //     return Container(
            //       margin: EdgeInsets.all(5.w),
            //       height: 47.h,
            //       width: 47.w,
            //       decoration: BoxDecoration(
            //         color:Colors.white ,
            //         borderRadius: BorderRadius.circular(8.88.r),
            //         border: Border.all(color: Color(0xffD1CFD5),width: .9.w),
            //         boxShadow: [
            //           BoxShadow(
            //             offset: Offset(0, 28.4.h),blurRadius: 56.83,spreadRadius: 0,color: Color(0xff8C889600).withOpacity(.02)
            //           )
            //         ]
            //       ),

            //     );
            //   }),
            // )