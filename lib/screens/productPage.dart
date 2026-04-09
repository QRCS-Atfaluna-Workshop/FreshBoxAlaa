import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:freshbox/screens/fav.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/mytextForm.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 59.h,),
          ///app bar
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: maAppBar(),
            ),
            SizedBox(height: 21.h,),
            proImage(),
             SizedBox(height: 30.h,),
             nameandprice(),
              SizedBox(height: 4.h,),
              subtitle(),
              SizedBox(height: 11.h,),
             restPage(),
        
        
        
        
          ],
        ),
      ),
    );
  }
}

class restPage extends StatelessWidget {
  const restPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding:  EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mytext(text: "Reviews", color: Color.fromRGBO(4, 12, 34, 1), size: 17.sp, fw: FontWeight.w500),
          SizedBox(height: 11.h,),
          imagesRow(),
          SizedBox(height: 30.h,),
          Mytext(text: "Add Instructions", color: Color.fromRGBO(4, 12, 34, 1), size: 17.sp, fw: FontWeight.w500),
            SizedBox(height: 10.h,),
            MyTextFormF(text: "Write Instructions",fillcolor: Color.fromRGBO(209, 207, 213, .3),he: 166,),
            SizedBox(height: 49.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              addremove(),
              addButton()
     
     
      
            ],),
            SizedBox(height: 24.h,)
        ],
      ),
    );
  }
}

class addButton extends StatelessWidget {
  const addButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
         height: 50.h,
         width: 183.w,
         decoration: BoxDecoration(
                color:Color.fromRGBO(235, 106, 88, 1) ,
                borderRadius: BorderRadius.circular(8.r)
         ),
         child: Center(child: Mytext(text: "Add to Cart", color: Colors.white, size: 21.sp, fw: FontWeight.w500)),
      ),
    );
  }
}

class addremove extends StatelessWidget {
  const addremove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8.r),
    color: Color.fromRGBO(209, 207, 213, .6)
                ),
                child: Icon(Icons.remove ,size: 24.sp,color: Color.fromRGBO(54, 61, 78, 1),),
                
      ),
        SizedBox(width: 17.w,),
                Mytext(text: "1", color: Color.fromRGBO(54, 61, 78, 1), size: 17.sp, fw: FontWeight.w500)
                ,SizedBox(width: 17.w,),
                Container(
             height: 36,
             width: 36,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(8.r),
               color: Color.fromRGBO(209, 207, 213, .6)
             ),
             child: Icon(Icons.add ,size: 24.sp,color: Color.fromRGBO(54, 61, 78, 1),),
             
                )
                ,
         
    ],);
  }
}

class imagesRow extends StatelessWidget {
  const imagesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       ClipRRect(
         borderRadius: BorderRadiusGeometry.circular(10.r),
         child: Image.asset("images/r1.jpg",height: 49.h,width: 52.w,fit: BoxFit.fill,)),
       ClipRRect(
         borderRadius: BorderRadiusGeometry.circular(10.r),
         child: Image.asset("images/r2.jpg",height: 49.h,width: 52.w,fit: BoxFit.fill,)),
       ClipRRect(
         borderRadius: BorderRadiusGeometry.circular(10.r),
         child: Image.asset("images/r3.jpg",height: 49.h,width: 52.w,fit: BoxFit.fill,)),
       ClipRRect(
         borderRadius: BorderRadiusGeometry.circular(10.r),
         child: Image.asset("images/r4.jpg",height: 49.h,width: 52.w,fit: BoxFit.fill,)),
       ClipRRect(
         borderRadius: BorderRadiusGeometry.circular(10.r),
         child: Image.asset("images/r5.jpg",height: 49.h,width: 52.w,fit: BoxFit.fill,)),
     ],
    );
  }
}

class subtitle extends StatelessWidget {
  const subtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 25.w,right: 22.w),
      child: Mytext(text: "Lorem ipsum et dolor sit amet and consectetur eadipiscing elit Ametmo magna the cursus yum dolor praesenta the  pulvinar tristique the food.", 
      color: Color.fromRGBO(61, 58, 69, 1), size: 15.sp, fw: FontWeight.w300),
    );
  }
}

class nameandprice extends StatelessWidget {
  const nameandprice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       Mytext(text: "Authentic Japanese\nFresh Sandwitch", color: Color.fromRGBO(4, 12, 34, 1), size: 21.sp, fw: FontWeight.w500),
       Mytext(text: "12\$", color: Color.fromRGBO(242, 99, 51, 1), size: 27.sp, fw: FontWeight.w700)
      
      ],),
    );
  }
}

class proImage extends StatelessWidget {
  const proImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10.r),
        child: Image.asset("images/product.jpg",width: 325.w,height: 177.h,fit: BoxFit.fill,)),
        
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
                      'Fresh Sandwitch',
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