import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mytext extends StatelessWidget {
  final String text;
  final Color color;
   TextAlign align = TextAlign.start;
  final double size;
  final FontWeight fw;
   Mytext({super.key, required this.text, required this.color, required this.size,
    required this.fw,  this.align = TextAlign.start,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight:  fw,
        fontFamily: "Montserrat",
        
      ),
    );
  }
}