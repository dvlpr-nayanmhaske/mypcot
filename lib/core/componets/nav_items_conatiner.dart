 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mypcot/core/const/colorpallate.dart';

navItems({icon, text, ontap, required bool isSelected}) {
    final color = isSelected ? AppColors.primary : Colors.grey;

    return GestureDetector(
      onTap: ontap,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24.sp, color: color),
          SizedBox(height: 4.h),
          Text(
            text,
            style: TextStyle(fontSize: 12.sp, color: color),
          ),
        ],
      ),
    );
  }