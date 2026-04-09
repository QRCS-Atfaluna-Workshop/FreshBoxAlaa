import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/mytext.dart';

class MyTextFormF extends StatefulWidget {
  final String text;
  final     Color fillcolor;
  final bool suff;
  final double he;
   MyTextFormF({super.key, required this.text,  this.suff = false,  this.fillcolor=Colors.white,  this.he=55});

  @override
  State<MyTextFormF> createState() => _MyTextFormFState();
}

class _MyTextFormFState extends State<MyTextFormF> {
   bool see = true ;
  @override
  Widget build(BuildContext context) {
   
    return  Container(
      decoration: BoxDecoration(
        color: widget.fillcolor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 32.w),spreadRadius: 0,blurRadius: 64,color: Color(0xff8C889600).withOpacity(0.02),
            
          )
        ]
      ),
      height: widget.he.h,
      child: Expanded(
        child: TextFormField(
          maxLines: 100,
          
          //////
          textAlignVertical: TextAlignVertical.center,
          /////
        
          obscureText: see?false:true,
          style: TextStyle(color: Colors.black),
          
          
          
          
                        decoration: InputDecoration(
                          isCollapsed: true,
                          
                          suffixIcon:  widget.suff? InkWell(
                            onTap: (){
                              see=!see;
                              setState(() {
                                
                              });
                            },
                            
                            child: Icon(
                see ?  Icons.visibility_off:Icons.visibility ,
              ),
                            
                            
                            ):SizedBox(height: 0,width: 0,),
                          
                          
                          contentPadding: EdgeInsets.only(top: 25.h,left: 20.w),
                          fillColor:  widget.fillcolor,
                          filled: true,
                      
                         hint: Mytext(text: widget.text, color: Colors.black, size: 15.sp, fw: FontWeight.w300),
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
      ),
    );
  }
}