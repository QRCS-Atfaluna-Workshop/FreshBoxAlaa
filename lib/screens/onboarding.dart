import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/screens/Registration/login.dart';
import 'package:freshbox/widgets/mytext.dart';
//done
class OnBoarding extends StatefulWidget {
   OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
   int currentPage = 0;
    PageController pageController = PageController();

  List<String> images = [
    "images/Onboarding_1.png",
    "images/Onboarding_2.png",
    "images/Onboarding_3.png",
  ];

   List<String> titles = [
    "Order Food Around You",
    "Receive the Great Food",
    "Hot Delivery to Home",
  ];

   List<String> subtitles = [
    "When you oder, we’ll hook you up with\nexclusive coupon, specials and rewards",
    "You’ll receive the great food within a hour\nAnd get free delivery credits for every order.",
    "We make food ordering fasr, simple and\nfree-no matter if you order online or cash",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 67.h,),
          Image.asset("images/Group 2738.png",width: 144.80999755859375.w,height: 22.694101333618164.h,fit: BoxFit.fill,),
          currentPage==0?SizedBox(height: 72.31.h,):currentPage==1?SizedBox(height: 159.31.h,):SizedBox(height: 129.31.h,),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              
              onPageChanged: (value){
                currentPage = value;
                setState(() {
                  
                });
              },
              itemCount: 3,
              itemBuilder: (context,index){
              return boardings(
                title: titles[index],
                subTitle: subtitles[index],
                image: images[index],
              );
            }),
          ),
          SizedBox(height: 23.h,),
          dots(currentPage: currentPage),
          SizedBox(height: 31.h,),
          currentPage==0?
          //1
          Row(
            children: [
              SizedBox(width: 36.w,),
              InkWell(
                onTap: (){  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (Route<dynamic> route) => false);
},
                child: Mytext(text: "Skip", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w500))
        ,    Spacer(),
            InkWell(
              onTap: () {
                if(currentPage!=2){
                  pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                }
                

              },
              child: Container(
                height:50.h ,
                width:137.w ,
                decoration: BoxDecoration(
                  color:Color.fromRGBO(18, 18, 18, 1) ,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(child: Mytext(text: "Next", color: Colors.white, size: 21.sp, fw: FontWeight.w500)),
              ),
            )
            ,  SizedBox(width: 32.w,)
            ],
          )
          :currentPage==1?
          //2
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
        
            children: [
               SizedBox(width: 36.w,),
              InkWell(
                onTap: (){ Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (Route<dynamic> route) => false);
},
                child: Mytext(text: "Skip", color: Color.fromRGBO(18, 18, 18, 1), size: 17.sp, fw: FontWeight.w500))
        ,    Spacer(),
            InkWell(
              onTap: () {
                if(currentPage!=2){
                  pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }
              },
              child: Container(
                height:50.h ,
                width:137.w ,
                decoration: BoxDecoration(
                  color:Color.fromRGBO(18, 18, 18, 1) ,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Center(child: Mytext(text: "Next", color: Colors.white, size: 21.sp, fw: FontWeight.w500)),
              ),
            )
            ,  SizedBox(width: 32.w,)
            ],
          ):
         //3
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(width: 25.w,),
              InkWell(
                onTap: () {
                if(currentPage!=2){
                  pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>LoginScreen()), (Route<dynamic> route) => false);
                  //navigate to home
                }
                

              },
                child: Container(
                    height:50.h ,
                    width:325.w ,
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(18, 18, 18, 1) ,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(child: Mytext(text: "Get Started", color: Colors.white, size: 21.sp, fw: FontWeight.w500)),
                  ),                        
              ),
                SizedBox(width: 25.w,)
            ],
          ),
        SizedBox(height: 45.h,),
      
      
        ],
      ),
    );
  }
}

class dots extends StatelessWidget {
  const dots({
    super.key,
    required this.currentPage,
  });

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: 
    List.generate(3, (index)=>
    Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height:  8.h,
      width:currentPage==index ? 30.w: 10.w,
      decoration: BoxDecoration(
        color:currentPage==index ? Color.fromRGBO(18, 18, 18, 1).withOpacity(1): Color.fromRGBO(18, 18, 18, 1).withOpacity(.4),
       borderRadius: BorderRadius.circular(25.r)
      ),
    )),);
  }
}

class boardings extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
   boardings({
    super.key, required this.title, required this.subTitle, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding:  EdgeInsets.only(left: 38.w,right: 5.w),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image,),
              SizedBox(height: 43.h,),
              Mytext(text: title, 
              color: Color.fromRGBO(4, 12, 34, 1), size: 27.sp, fw: FontWeight.w500),
              SizedBox(height: 2.h,),
                 Mytext(text: subTitle, 
              color: Color.fromRGBO(92, 97, 111, 1), size: 15.sp, fw: FontWeight.w300),            
              
              
            ],
         
      ),
    )
    ;
  }
}