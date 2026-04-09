import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingStars extends StatelessWidget {
  final int rating; 
  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          size: 37.sp, // حجم النجمة
          color: index < rating ? Colors.black : Color.fromRGBO(209, 207, 213, 1), 
        );
      }),
    );
  }
}