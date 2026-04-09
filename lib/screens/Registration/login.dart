import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshbox/screens/Registration/signup.dart';
import 'package:freshbox/widgets/myButton.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/mytextForm.dart';
import 'package:freshbox/widgets/textformtitle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailreset = TextEditingController();
  bool valid = false ;
  bool changed = false ;
  bool showPopReset = false ;
  bool reseting = false ;
  bool passchanged = true ;
  GlobalKey<FormState> key = GlobalKey();
  GlobalKey<FormState> key2 = GlobalKey();
  GlobalKey<FormState> key3 = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F8),
      body: Stack(
        children: [
          ///all the body is here
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 67.h,),
              Center(child: Image.asset("images/Group 2738.png",width: 144.80999755859375.w,height: 22.694101333618164.h,fit: BoxFit.fill,)),
                SizedBox(height:38.31.h,),
                //titles
                Padding(
                  padding:  EdgeInsets.only(left: 27.w),
                  child: Mytext(text: "Let’s Sign You In", color:  Color.fromRGBO(17, 26, 44, 1), size: 21.sp, fw: FontWeight.w500),
                ),
                SizedBox(height:4.h,),
                 Padding(
                  padding:  EdgeInsets.only(left: 25.w),
                  child: Mytext(text: "Welcome back, you’ve been missed!", 
                  color:  Color.fromRGBO(18, 18, 18, .6), size: 15.sp, fw: FontWeight.w500),
                 
                ),
                SizedBox(height:24.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w),
            /// forms
            /// 
          
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textformtitle(text: "Username or E-mail",),
                       SizedBox(height:12.h,),
                      MyTextFormF(text: "Enter your username or E-mail",),
                      SizedBox(height:20.h,),
                      textformtitle(text: "Password",),
                       SizedBox(height:12.h,),
                      MyTextFormF(text: "Enter your password",suff: true,),
                      SizedBox(height:12.h,),
                    ],
                  ),
                ),
                //Forgot Password?
                Row(children: [
                  Spacer(),
                      InkWell(
                        onTap: (){setState(() {
                          showPopReset=true;
                        });},
                        child: textformtitle(text: "Forgot Password?",)),
                      SizedBox(width:16.w,),
          
                ],),
          SizedBox(height:40.h,),
            Center(child: MyButton(text: "LogIn", onTap: (){})),
            SizedBox(height:20.h,),
            ///Don’t have an account
            ///  ///Don’t have an account
            /// 
            /// 
            /// 
            Center(
              child: RichText(
              text: TextSpan(
          text: "Don’t have an account? ",
          style: TextStyle(
             color: Colors.black,
              fontSize: 17.sp,
              fontWeight:   FontWeight.w300,
              fontFamily: "Montserrat",
          ),
          children: [
            TextSpan(
              text: "Sign Up",
              style: TextStyle(
                color: Color(0xffEB6A58),
              fontSize: 17.sp,
              fontWeight:   FontWeight.w500,
              fontFamily: "Montserrat",
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  /////////////////////////////
                },
            ),
          ],
              ),
              ),
          
            ),
            SizedBox(height:83.h,),
            Center(
              child: googlefacebook(color: Colors.white, image: "images/Group 91.png", text: "Continue With Google",
               textcolor: Color(0xff111A2C)),
            ),
             SizedBox(height:14.h,),
               Center(
           child: googlefacebook(color: Color(0xff4267B2), image: "images/Vector.png", text: "Continue With Facebook",
              textcolor:Colors.white),
               ),
          
                
            
            ],
          ),
       showPopReset ? 
       Container(
      height: double.infinity,
       width: double.infinity,
       color: Colors.black.withOpacity(.6),
      child: Center(
        child: Container(
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
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mytext(text: "Password Recovery", color: Color(0xff313131), size: 19.18.sp, fw: FontWeight.w500)
                    ,         SizedBox(height: 7.h,),
                Mytext(text: "Enter your email for the\nverification proccess, we will send\nyou link to Reset your Password.", 
                color: Color(0xff000000).withOpacity(.9), size: 15.sp, fw: FontWeight.w300)
                    ,         SizedBox(height: 27.5.h,),
                    Mytext(text: "Email Id", color: Color(0xff121212), size: 15.5.sp, fw: FontWeight.w300),
                    
             
              SizedBox(height: 11.h,),
              ///text form for email
               ////
               ///
               Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F8),
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
            BoxShadow(
              offset: Offset(0, 32.w),spreadRadius: 0,blurRadius: 64,color: Color(0xff8C889600).withOpacity(0.02),
              
            )
                    ]
                  ),
                  height: 55.h,
                  child: TextFormField(
                    controller:emailreset,
                    validator: (v){
            if (v!.endsWith("@gmail.com")){
              setState(() {
                valid=true;
              });
            
            }
                    },
                    onChanged: (value) {
            setState(() {
              changed= true;
            
            });
            
                    },
                    
            
                    style: TextStyle(color: Colors.black),
                    
                    
                    
                    
                        decoration: InputDecoration(
                          
                          suffixIcon: valid?Icon(Icons.check,color: Colors.green,size: 20.sp,):null,
                          
                          
                          contentPadding: EdgeInsets.only(top: 25.h,left: 20.w),
                          fillColor: Color(0xffF5F5F8),
                          filled: true,
                         hint: Mytext(text: "Enter your e-mail", color: Colors.black, size: 13.7.sp, fw: FontWeight.w300),
                          focusedBorder:  OutlineInputBorder(
                            
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none
            
                            
                          ),
                          border:  OutlineInputBorder(
                            
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none
            
                            
                          ),
                          enabledBorder:  OutlineInputBorder(
                            
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none
            
                            
                          ),
                          disabledBorder:  OutlineInputBorder(
                            
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide.none
            
                            
                          )
                          
                        ),
                      ),
                )
               ///
               ///
               ///
               ///
            ,SizedBox(height:56.54.h,),
            Center(child: MyButton(text: "Continue", onTap: changed?(){
              //code
              if(key.currentState!.validate()){
                setState(() {
                  valid=true;
                  showPopReset=false;
                  reseting= true ;
                });
              }
            }
            : (){
              //nothing here
            },
            color: changed?Color(0xffEB6A58):Color(0xffD1CFD5),
            ))
                    
                    
                    
              ],
            ),
          ),
        ),
      ),
    )
      : SizedBox(height: 0,width: 0,),
      reseting ? 
       Container(
      height: double.infinity,
       width: double.infinity,
       color: Colors.black.withOpacity(.6),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.h),
          height: 516.h,
          width: 324.4243469238281.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 28.59.h),blurRadius: 57.18,spreadRadius: 0,color: Color(0xff8C889621).withOpacity(.13)
                      )
                    ]
          ),
          child: Form(
             key: key2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Mytext(text: "Reset Your Password", color: Color(0xff313131), size: 19.18.sp, fw: FontWeight.w500)
                    ,         SizedBox(height: 7.h,),
                Mytext(text: "At least 9 characters, with uppercase\nand lowercase letters", 
                color: Color(0xff616161).withOpacity(.9), size: 15.sp, fw: FontWeight.w300)
                    ,         SizedBox(height: 27.5.h,),
                    Mytext(text: "Password", color: Color(0xff121212), size: 15.5.sp, fw: FontWeight.w300),
                    
             
              SizedBox(height: 10.h,),
              MyTextFormF(text: "new password",fillcolor: Color(0xffF5F5F8),suff: true,),
              SizedBox(height: 26.h,),
                                  Mytext(text: "Confirm Password", color: Color(0xff121212), size: 15.5.sp, fw: FontWeight.w300),

              SizedBox(height: 10.h,),
              MyTextFormF(text: "confirm password",fillcolor: Color(0xffF5F5F8),suff: true,),
              //////////////////////////////
              //////// you hae to work more here (password req)
              Spacer(),
              ////////////////////////////////////////////////////

            Center(child: MyButton(text: "Continue",
            color:Color(0xffEB6A58),onTap: (){},
            ))       
                    
              ],
            ),
          ),
        ),
      ),
    )
      : SizedBox(height: 0,width: 0,),
      passchanged ? 
       Container(
      height: double.infinity,
       width: double.infinity,
       color: Colors.black.withOpacity(.6),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.h),
          height: 473.h,
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
              Mytext(text: "Congratulations!", color: Color(0xff313131), size: 19.18.sp, fw: FontWeight.w500)
                  ,         SizedBox(height: 7.h,),
              Mytext(text: "You successfully rest your password\nNow you are good to go", 
              color: Color(0xff616161).withOpacity(.9), size: 15.sp, fw: FontWeight.w300)
                  ,         SizedBox(height: 37.h,),
                  
          SvgPicture.asset("images/013.svg",height: 221.8197021484375.h,width: 219.75393676757812.w,fit: BoxFit.fill,),
            SizedBox(height: 44.23.h,),
          
          
          Center(child: MyButton(text: "Jump Into Log In",
          onTap: (){
            setState(() {
              showPopReset=false;
              reseting=false;
              passchanged=false;
            });
          },
          ))       
                  
            ],
          ),
        ),
      ),
    )
      : SizedBox(height: 0,width: 0,)
       ],
      ),
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

