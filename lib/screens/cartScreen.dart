import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/widgets/myButton.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 59.h,),
            maAppBar(),
            SizedBox(height: 33.h,),
             item(image: "images/product.jpg",name: "Fresh Sandwitch",),
             SizedBox(height: 14.h,),
             item(image: "images/fav2.png",name: "Grilled Sandwitch",),
             SizedBox(height: 30.h,),
             Padding(
               padding:  EdgeInsets.only(left: 25.w),
               child: Text("Recepient Address",style: TextStyle(
                   color: Color.fromRGBO(18, 18, 18, 1),
                   fontFamily: "Montserrat",
                   fontWeight: FontWeight.w500,
                   fontSize: 17.sp
                  ),),
             ),
                SizedBox(height: 18.h,),
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 20.w),
                   child: Container(
                         padding: EdgeInsets.all(16.w),
                         height: 104.h,
                         width: double.infinity,
                         decoration: BoxDecoration(
                           color: Color.fromRGBO(209, 207, 213, 1).withOpacity(.3),
                           borderRadius: BorderRadius.circular(10.r),
                         ),
                         child: Text("9224 Jailyn Terrace, block 2, North\nMaryjaneton, Tanzania, 4387242",
                         style: TextStyle(fontFamily: "Montserrat",fontSize: 17.sp,fontWeight: FontWeight.w300,color: Color.fromRGBO(18, 18, 18, 1)),),
                       ),
                 )
        ,SizedBox(height: 30.h,),
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
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
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
       
       
   ,    SizedBox(height: 49.h,),
   Center(child: MyButton(text: "Process to Payment", onTap: (){})),
   SizedBox(height: 29.h,),
          ],
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  final String image ;
  final String name ;
  const item({
    super.key, required this.image, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.only(left: 12.w,right: 10.w),
       margin: EdgeInsets.symmetric(horizontal: 20.w),
       width:325.w,
       height: 114.h,
       decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
            BoxShadow(
              offset: Offset(0, 32.2),
              blurRadius: 64.39,
              spreadRadius: 0,
              color: Color.fromRGBO(140, 136, 150, 0.13)
            )
          
        
        
        ]
       ),
       child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10.r),
            child: Stack(
              children: [
     Image.asset(image,height: 91.42857360839844.h,width: 92.40000915527344.w,fit: BoxFit.fill,),
             Positioned(
         top: 7.h,
         left: 7.w,
         child: Container(
           height: 20.h,
           width:53.076927185058594.w ,
           decoration: BoxDecoration(
             color: Color.fromRGBO(235, 106, 88, 1),
             borderRadius: BorderRadius.circular(4.58.r),
           ),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
             Icon((Icons.star),color: Colors.white,size: 18.46154022216797.sp,),
             SizedBox(width: 1.5.w,),
             Text("-30",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
             fontSize: 12.12.sp,
             fontWeight: FontWeight.w500,fontFamily: "Montserrat"
              ),)
           ],),
         ),
       )
           ],
            )),
          SizedBox(width: 14.6.w,),
          Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    Text("10\$",style: TextStyle(
       color: Color.fromRGBO(242, 99, 51, 1),
       fontSize: 21.sp,
       fontWeight: FontWeight.w600,
       fontFamily: "Montserrat"
     ),),
    
     SizedBox(height: 3.h,),
     Text(name,style: TextStyle(
       color: Color.fromRGBO(18, 18, 18, 1),
       fontSize:15.sp,
       fontWeight: FontWeight.w300,
       fontFamily: "Montserrat"
     ),),
     SizedBox(height: 3.h,),
     Row(
  
      
      children: [
        Row(children: [Icon(Icons.star_border,size: 13.688889503479004.sp
          ,color: Color.fromRGBO(91, 196, 57, 1),
          ),
          SizedBox(width: 5.77,),
          Text("4.5",style: TextStyle(
     color: Color.fromRGBO(91, 196, 57, 1),
     fontSize: 15.sp,
     fontFamily: "Montserrat"
          ),),
          ],),
       SizedBox(width: 46.w,),
          Row(children: [
      Container(
       height: 30.h,
       width: 30.w,
       decoration: BoxDecoration(
         color: Color.fromRGBO(209, 207, 213, .6),
         borderRadius: BorderRadius.circular(8.r)
       ),
       child: Icon(Icons.remove,color: Color.fromRGBO(54, 61, 78, 1),size: 20.sp,),
          
     ),
     SizedBox(width: 13.4.w,),
     Text("1",style: TextStyle(
       fontFamily: "Montserrat",
       fontSize: 17.sp,
       color: Color.fromRGBO(54, 61, 78, 1),
       fontWeight: FontWeight.w500
     ),),
     SizedBox(width: 13.4.w,),
      Container(
       height: 30.h,
       width: 30.w,
       decoration: BoxDecoration(
         color: Color.fromRGBO(209, 207, 213, .6),
         borderRadius: BorderRadius.circular(8.r)
       ),
       child: Icon(Icons.add,color: Color.fromRGBO(54, 61, 78, 1),size: 20.sp,),
          
     ),
     
     
          ],)
     
        
           
     
            ],
          )
        ],
       ),
       ]
          )
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
                      'Cart',
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