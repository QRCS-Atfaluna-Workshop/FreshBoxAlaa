import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshbox/screens/OrderHistory.dart';
import 'package:freshbox/screens/cartScreen.dart';
import 'package:freshbox/screens/fav.dart';
import 'package:freshbox/screens/home.dart';
import 'package:freshbox/screens/not.dart';
import 'package:freshbox/screens/popularFood.dart';
import 'package:freshbox/widgets/mytext.dart';
import 'package:freshbox/widgets/productCard.dart';
import 'package:freshbox/widgets/restaurant.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<Widget>screens = [
    HomeScreen(),
    OrderHistory(),
    CartScreen(),
    FavScreen(),
    Notification22()
    
   ];

   int currentPage = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
       body: screens[currentPage],
       bottomNavigationBar:  ConvexAppBar(
        height: 56.h,
        
        color: Color(0xffD1CFD5),
        activeColor:Color(0xffEB6A58),
      backgroundColor: Colors.white,
      
    
  items: 
  
   [
    TabItem(icon: Icons.home,),
    TabItem(icon: Icons.file_present,),
    TabItem(icon: Icons.shopping_cart),
    TabItem(icon: Icons.favorite),
    
    TabItem(icon: Icons.notifications),
  ],
  onTap: (int i) {
    setState(() {
      currentPage=i;
    });
  },
)
    );
  }
}

