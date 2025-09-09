import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot/core/const/asseturls.dart';
import 'package:mypcot/core/const/colorpallate.dart';
import 'package:mypcot/core/const/typography.dart';
import 'package:mypcot/core/extensions/custome_sizeboxed.dart';

Container order_banner_method({bgColor}) {
  return Container(
    margin: EdgeInsets.only(right: 16.w, left: 16.w),
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    width: double.infinity,
    height: 228.h,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox(30),
            Container(
              height: 124.h,
              width: 124.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
              ),
              child: SvgPicture.asset(AssetUrls.orders, fit: BoxFit.cover),
            ),
            heightBox(32),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 140,
                height: 36,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      AppColors.appOrange2,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: Typo.rSemiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 10,
          top: -8,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            width: 150,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.appOrange2,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              children: [
                heightBox(8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "You have",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: Typo.rRegular,
                        ),
                      ),
                      TextSpan(
                        text: " 3 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: Typo.rBold,
                        ),
                      ),
                      TextSpan(
                        text: "active orders from",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: Typo.rRegular,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 90,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        top: 8,
                        child: Container(
                          height: 34.h,
                          width: 34.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              AssetUrls.igprofileImg1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 8,

                        child: Container(
                          height: 34.h,
                          width: 34.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              AssetUrls.igprofileImg2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 8,

                        child: Container(
                          height: 34.h,
                          width: 34.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.red, width: 2),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              AssetUrls.igprofileImg1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 120,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            width: 110,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              children: [
                heightBox(8),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "02 ",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 20,
                          fontFamily: Typo.rBold,
                        ),
                      ),
                      TextSpan(
                        text: " Pending ",
                        style: TextStyle(
                          color: AppColors.primary,

                          fontSize: 12,
                          fontFamily: Typo.rRegular,
                        ),
                      ),
                      TextSpan(
                        text: "\nOrders from",
                        style: TextStyle(
                          color: AppColors.primary,

                          fontSize: 16,
                          fontFamily: Typo.rRegular,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                  width: 90,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 10,
                        top: 8,
                        child: Container(
                          height: 34.h,
                          width: 34.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 2.w),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Image.asset(
                              AssetUrls.igprofileImg2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35.w,
                        top: 8.h,

                        child: Container(
                          height: 34.h,
                          width: 34.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(color: Colors.red, width: 2.w),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.r),
                            child: Image.asset(
                              AssetUrls.igprofileImg1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
