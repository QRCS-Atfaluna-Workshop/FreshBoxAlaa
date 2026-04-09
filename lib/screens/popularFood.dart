import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/productCard.dart';

class Popularfood extends StatelessWidget {
  const Popularfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 68.h,),
                maAppBar(),
                SizedBox(height: 24.h,),
                myGridView(),
                SizedBox(height: 11.h,),
                RecommendedLine(),
                 SizedBox(height: 26.h,),
                recommendedList(),
            
                
                ],
            ),
          ),
        ),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [ 
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
               
                    Text(
                      'Popular Food',
                      style:  TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 21.sp,
                        color: Color.fromRGBO(4, 12, 34, 1),
                      ),
                    ) ,
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
               
               
               
               ],
              
    );
  }
}



class RecommendedLine extends StatelessWidget {
  const RecommendedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("Recommended",style: TextStyle(
          color: Color.fromRGBO(4, 12, 34, 1),
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500,
          fontSize: 21.sp
        ),),
        Container(
          height: 26.h,
          width: 77.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            color: Color.fromRGBO(18, 18, 18, 1)
          ),
          child: Center(child: Text("See All",style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w500,fontSize: 15.sp,
            fontFamily: "Montserrat"),)),
        )
    
      ],
    );
  }
}


class myGridView extends StatelessWidget {

  const myGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 566.h,
      child: GridView(
        padding: EdgeInsets.only(top: 0),
        
      
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          
          crossAxisCount: 2,
          crossAxisSpacing: 19.w, //بين الاعمده 
          mainAxisSpacing: 24.h, //  بين الصفوف 
           childAspectRatio: 0.57
           
          ),
          children: [
           Productcard(offer: true, image: "images/item2.jpg", title: "Coco berry\nSalad"),
           Productcard(offer: false, image: "images/item1.jpg", title: "Marinated\nGrilled Burger"),
           Productcard(offer: false, image: "images/item3.jpg", title: "Fresh Salad\nwith Letuce"),
           Productcard(offer: true, image: "images/item4.jpg", title: "Fresh Salad\nGreen berry"),
      
              
            
            
      
      
          ],
      ),
    );
  }
}



class recommendedList extends StatelessWidget {
  const recommendedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 27.w),
          width:325.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Color.fromRGBO(235, 106, 88, 0.4).withOpacity(.5),
            borderRadius: BorderRadius.circular(16.r)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/rec1.png",height: 104.h,width: 104.w,fit: BoxFit.fill,),
              SizedBox(width: 30.w,),
              Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fresh Veg-Salad",style: TextStyle(
          color:  Color(0xff111A2C),
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 3.h,),
        Text("Fresh Salad with Green \nberry",style: TextStyle(
          color: Color.fromRGBO(18, 18, 18, 1),
          fontSize:13.sp,
          fontWeight: FontWeight.w300,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 11.h,),
        Text("8.99\$",style: TextStyle(
          color: Color(0xff111A2C),
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 30.h,),
         Container(
          padding: EdgeInsets.only(left: 27.w),
          width:325.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Color.fromRGBO(240, 243, 249, 1).withOpacity(.5),
            borderRadius: BorderRadius.circular(16.r)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/rec3.png",height: 104.h,width: 104.w,fit: BoxFit.fill,),
              SizedBox(width: 30.w,),
              Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Veg Biryani",style: TextStyle(
          color:  Color(0xff111A2C),
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 3.h,),
        Text("Fresh Salad with Green \nberry",style: TextStyle(
          color: Color.fromRGBO(18, 18, 18, 1),
          fontSize:13.sp,
          fontWeight: FontWeight.w300,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 11.h,),
        Text("12.99\$",style: TextStyle(
          color: Color(0xff111A2C),
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 30.h,),
         Container(
          padding: EdgeInsets.only(left: 27.w),
          width:325.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Color.fromRGBO(209, 207, 213, 1).withOpacity(.5),
            borderRadius: BorderRadius.circular(16.r)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("images/rec2.png",height: 104.h,width: 104.w,fit: BoxFit.fill,),
              SizedBox(width: 30.w,),
              Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Veg Biryani",style: TextStyle(
          color:  Color(0xff111A2C),
          fontSize: 17.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 3.h,),
        Text("Fresh Salad with Green \nberry",style: TextStyle(
          color: Color.fromRGBO(18, 18, 18, 1),
          fontSize:13.sp,
          fontWeight: FontWeight.w300,
          fontFamily: "Montserrat"
        ),),
        SizedBox(height: 11.h,),
        Text("12.99\$",style: TextStyle(
          color: Color(0xff111A2C),
          fontSize: 21.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Montserrat"
        ),),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 100.h,),
                      
      ],
    );
  }
}
