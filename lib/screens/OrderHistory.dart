import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/UpcomingOrder.dart';
import 'package:freshbox/widgets/myButton.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/mytextForm.dart';
import 'package:freshbox/widgets/ordercontainer.dart';
import 'package:freshbox/widgets/ratingStars.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}


class _OrderHistoryState extends State<OrderHistory> with TickerProviderStateMixin {
  late TabController _tabController;
   bool rating= false; 
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); 
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
          SizedBox(height: 59.h),
          MyAppBar(),
          SizedBox(height: 26.h),
          Container(
            width: 325.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 207, 213, 0.3),// خلفية رمادية للتابات الغير محددة
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: TabBar(
              controller: _tabController, // ربط بالـ TabController
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromRGBO(140, 136, 150, 1),
              indicator: BoxDecoration(
                
                borderRadius: BorderRadius.circular(20.r),
              ),
              tabs:  [
                Tab(icon:Text("History",style: TextStyle(fontSize: 17.sp,
                fontWeight: FontWeight.w500,fontFamily: "Montserrat"),),),
                Tab(icon:Text("Upcoming",style: TextStyle(fontSize: 17.sp,
                fontWeight: FontWeight.w500,fontFamily: "Montserrat"),),),
              ],
            ),
          ),
          
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children:  [
                // noHistory(),
               SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30.h,),
            Ordercontainer(name: "Starbucks", price: "30\$", date: "17 Jan, 02:30. 3 items", 
            image: "images/order1.png", status: "Deliverd",onTap: (){
          
              setState(() {
                rating=true;
              });
            },),
            SizedBox(height: 21.h,),
            Ordercontainer(name: "Domino’s Pizza", price: "45\$",
             date: "29 Jan, 02:30. 2 items", 
            image: "images/order2.png", status: "Cancel",onTap: (){setState(() {
                rating=true;
              });}),
            SizedBox(height: 21.h,),
            Ordercontainer(name: "Pizza Hut", price: "55\$", date: "30 Jan, 02:30. 3 items", 
            image: "images/order3.png", status: "Deliverd",onTap: (){setState(() {
                rating=true;
              });}),
            SizedBox(height: 21.h,),
          ],),
              )
          
          
              ,
               UpcomingOrders()
              ],
            ),
          ),
               ],
            ),
          ),
          rating?
                 Container(
      height: double.infinity,
       width: double.infinity,
       color: Colors.black.withOpacity(.6),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20.h),
          height:364.0799865722656.h,
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
              Mytext(text: "Rate This Food", color: Color(0xff313131), size: 19.18.sp, fw: FontWeight.w500)
                  ,         SizedBox(height: 7.h,),
              Mytext(text: "How is your experience enjoying\nthis food? Let me know what you think.", 
              color: Color(0xff616161).withOpacity(.9), size: 15.sp, fw: FontWeight.w300)
                  ,         SizedBox(height: 5.h,),
                  RatingStars(rating: 3),
                  SizedBox(height: 33.h,),
                  MyTextFormF(text: "What do you think ?",fillcolor: Color.fromRGBO(245, 245, 248, 1),),
                  
           
            SizedBox(height: 21.h,),
            MyButton(text: "Continue", onTap: 
            (){})

    
                  
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

class UpcomingOrders extends StatelessWidget {
  const UpcomingOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         SizedBox(height: 24.h,),
         Mytext(text: "Order in progress", color: Color.fromRGBO(4, 12, 34, 1), size: 17.sp, fw: FontWeight.w500),
         SizedBox(height: 20.h,),
         UpcomingOrde(name: "Starbucks", price: "50\$", date: "Today. 3 items", image: "images/order1.png"
         , status: "On the Way"),
         SizedBox(height: 20.h,),
         UpcomingOrde(name: "Domino’s Pizza", price: "30\$", date: "Today. 3 items", image:
          "images/order2.png"
         , status: "On the Way"),
    
         
       ],
      ),
    );
  }
}




class noHistory extends StatelessWidget {
  const noHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       SizedBox(height: 64.h),
      Image.asset("images/Unhappy.png",width: 157.w,height: 195.h,fit: BoxFit.cover,),
      SizedBox(height: 24.h),
      Mytext(text: "Empty History", color: Color(0XFF040C22), size: 21.sp, fw: FontWeight.w500),
      SizedBox(height: 5.h),
      Mytext(text: "You don't have a transaction\nhistory. Let’s Order Something", color: Color(0XFF121212), size: 15.sp, fw: FontWeight.w300)
              ,  SizedBox(height: 57.h),
              MyButton(text: "Order Now", onTap: (){})
              ,  SizedBox(height: 30.h),
    
    
    ],);
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
      Mytext(text: "My Orders", color: Color(0xff040C22), size: 21.sp, fw: FontWeight.w500),
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