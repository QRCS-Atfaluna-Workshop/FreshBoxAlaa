import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/screens/popularFood.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/productCard.dart';
import 'package:freshbox/widgets/restaurant.dart';

class HomeScreen extends StatelessWidget {
             HomeScreen({super.key});
    List<String>cat1 = [
    "Featured",
    "Nearby you",
    "Trending",
    "Newest"
  ];
    List<String>cat2 = [
    "Breakfast",
    "Lunch",
    "Dinner",
    "Snacks"
  ];
    List<String>images = [
    "images/pro1.png",
    "images/pro2.png",
    "images/pro3.png",
    "images/pro4.png",


  ];
    List<String>images2 = [
    "images/p1.png",

    "images/p2.png",
    "images/p3.png",


  ];
  PageController pagecon = PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 59.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Mytext(text: "Your Location", color: Color(0xff5C616F), size: 13.sp, fw: FontWeight.w500),
                      SizedBox(height: 3.h,),
                            Row(
                              children: [
                                Mytext(text: "9224 Jailyn Terrace, block 2", color: Color(0xff121212), size: 17.sp, fw: FontWeight.w500),
                             SizedBox(width: 4.w,),
                             Icon(Icons.arrow_downward_sharp,color: Color(0xff363D4E),size: 16.sp,)
                              ],
                            ),
                          
                    ],)
                  ,Image.asset("images/Rectangle 2050.png",height: 48.h,width: 48.w,),
                  ],),
             SizedBox(height: 20.h,),
              whatToEat(),
              SizedBox(height: 26.h,),
                ],
              ),
            ),
             cat1row(cat1: cat1),
             SizedBox(height: 30.h,),
             ct2Row(images: images, cat2: cat2),
              SizedBox(height: 30.h,),
              offersRow(images2: images2),
              SizedBox(height: 30.h,),
              popularRow(),
              SizedBox(height: 18.h,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:  EdgeInsets.only(left: 26.w),
                  child: itemsRow(),
                ),
              ),
              SizedBox(height: 30.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Mytext(text: "Nearby Restaurant", color: Color(0xff040C22), size: 21.sp, fw: FontWeight.w500),
                    Container(
                      height: 26.h,
                      width: 77.w,
                      decoration: BoxDecoration(
                        color: Color(0xff040C22),
                        borderRadius: BorderRadius.circular(6.r)
                      ),
                      child: Center(child: Mytext(text: "See All", color: Colors.white, size: 15.sp, fw: FontWeight.w500)),
                    )
                         
                         
                ],),
              ),
                SizedBox(height: 18.h,),
                NearbyRestaurant(image: "images/res1.jpg",km: "1.2 Km",title: "Salad Factory",location: "2464 Royal Ln. Mesa",open: "Open at 10:00 AM",),
                SizedBox(height: 18.h,),
                NearbyRestaurant(image: "images/res2.jpg",km: "3.2 Km",title: "Salad Factory",location: "2464 Royal Ln. Mesa",open: "Open at 10:00 AM",),
                SizedBox(height: 18.h,),
                NearbyRestaurant(image: "images/res3.jpg",km: "2 Km",title: "Salad Factory",location: "2464 Royal Ln. Mesa",open: "Open at 10:00 AM",),
                SizedBox(height: 69.h,),

         
          ],
         ),
       );
  }
}






class popularRow extends StatelessWidget {
  const popularRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 26.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Mytext(text: "Popular Food", color: Color(0xff040C22), size: 21.sp, fw: FontWeight.w500),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Popularfood()));
            },
            child: Container(
              height: 26.h,
              width: 77.w,
              decoration: BoxDecoration(
                color: Color(0xff040C22),
                borderRadius: BorderRadius.circular(6.r)
              ),
              child: Center(child: Mytext(text: "See All", color: Colors.white, size: 15.sp, fw: FontWeight.w500)),
            ),
          )
               
               
      ],),
    );
  }
}

class itemsRow extends StatelessWidget {
  const itemsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Productcard(offer: true, image: "images/item2.jpg", title: "Coco berry\nSalad"),
      SizedBox(width: 16.w,),
      Productcard(offer: true, image: "images/item1.jpg", title: "Marinated\nGrilled Burger"),
      SizedBox(width: 16.w,),
      Productcard(offer: true, image: "images/item2.jpg", title: "Coco berry\nSalad"),
      SizedBox(width: 16.w,),
      Productcard(offer: true, image: "images/item1.jpg", title: "Marinated\nGrilled Burger"),
      SizedBox(width: 26.w,),
    ],);
  }
}

class offersRow extends StatelessWidget {
  const offersRow({
    super.key,
    required this.images2,
  });

  final List<String> images2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 211.h,
      child: Center(
        child:SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(3, (index) {
          return Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Stack(
              children: [
    Container(
      height: 211.h,
      width: 300.w,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Image.asset(
        images2[index],
        height: 211.h,
        fit: BoxFit.fill,
      ),
    ),
    Container(
      height: 211.h,
      width: 300.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.black.withOpacity(.6),
      ),
    ),
    Positioned(
      bottom: 14.h,
      left: 16.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mytext(
            text: "Fresh Sweet Truth",
            color: Colors.white,
            size: 21.sp,
            fw: FontWeight.w500,
          ),
          SizedBox(height: 2.h),
          Mytext(
            text: "Bakery, Desserts",
            color: Colors.white,
            size: 13.sp,
            fw: FontWeight.w300,
          ),
        ],
      ),
    ),
    Positioned(
      bottom: 10.h,
      left: 231.w,
      child: Mytext(
        text: "\$8.99",
        color: Colors.white,
        size: 21.sp,
        fw: FontWeight.w500,
      ),
    ),
              ],
            ),
          );
        }),
      ),
    )
      ),
    );
  }
}

class ct2Row extends StatelessWidget {
  const ct2Row({
    super.key,
    required this.images,
    required this.cat2,
  });

  final List<String> images;
  final List<String> cat2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

          height: 111.h,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 24.w),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
        
            itemBuilder: (context, index) {
              return Padding(
     padding:  EdgeInsets.only(right: 16.w),
     child: Column(
      mainAxisSize: MainAxisSize.min,
       children: [
         Container(height: 81.h,width: 81.w,
           child: ClipRRect(
             borderRadius: BorderRadiusGeometry.circular(10.r),
             child: Image.asset(images[index],height: 81.h,width: 81.w,fit: BoxFit.cover,)),
         ),
          SizedBox(height: 8.h,),
         Mytext(text: cat2[index],
        color:   Color(0xff121212), 
          size:15.sp, 
        fw: FontWeight.w500),
        
                             
       ],
     ),
              );
            },
          ),    
        );
  }
}

class cat1row extends StatelessWidget {
  const cat1row({
    super.key,
    required this.cat1,
  });

  final List<String> cat1;

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(left: 24.w),
    height: 33.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
    
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(right: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
     Mytext(text: cat1[index],
    color:index == 0?   Color(0xff121212): Color(0xff3D3A45), 
      size: index==0?17.sp: 15.sp, 
      fw:index==0?FontWeight.w500: FontWeight.w300),
     SizedBox(height: 9.h,),
    index==0? SizedBox(
       width: 70.w,
       child: Divider(
         height:2.h,
         thickness: 2.h,
         radius: BorderRadius.circular(30.r),
       
         color: Colors.black,
         
       ),
     ):SizedBox(
      height: 0,
      width: 0,
     )
              ],
            ),
          );
        },
      ),
    );
  }
}

class whatToEat extends StatelessWidget {
  const whatToEat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 325.w,
      child: TextField(
        
        textAlignVertical: TextAlignVertical.center,
        
        decoration: InputDecoration(
         
          hint: Mytext(text: "what do you want to eat?", color: Colors.black, size: 15.sp, fw: FontWeight.w300),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide.none
          ),
          
          fillColor: Color(0xffD1CFD5).withOpacity(.4),
          filled: true,
          
          prefixIcon: Icon(Icons.search,color: Color(0xff121212),size: 24.sp,),
          suffixIcon: Container(
            margin: EdgeInsets.all(6.h),
            height: 38.h,width: 38.w,decoration: 
            BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.r)),
            child: Icon(Icons.mic,size: 24.sp,),)
        ),
        
      ),
      
    );
  }
}