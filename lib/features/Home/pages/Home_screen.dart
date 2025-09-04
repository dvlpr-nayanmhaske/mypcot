import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/core/componets/navBar.dart';
import 'package:mypcot/core/const/asseturls.dart';
import 'package:mypcot/core/const/colorpallate.dart';
import 'package:mypcot/core/const/list.dart';
import 'package:mypcot/core/const/router.dart';
import 'package:mypcot/core/const/typography.dart';
import 'package:mypcot/core/extensions/custome_sizeboxed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 4; // default selected (e.g., Thursday)
  late PageController _pageController;

  final List<String> days = [];
  final List<int> dates = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.25, // controls how many items are visible
      initialPage: selectedIndex,
    );

    generateDates();
  }

  void generateDates() {
    DateTime today = DateTime.now();

    // Generate next 365 days
    for (int i = 0; i < 365; i++) {
      DateTime date = today.add(Duration(days: i));
      days.add(
        ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][date.weekday - 1],
      );
      dates.add(date.day);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44.h,
                      width: 44.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 28.50,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AssetUrls.options,
                          height: 20.w,
                          width: 20.w,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 28.50,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {
                              goRouter.goNamed(Routes.navBarScreen.name);
                            },
                            icon: SvgPicture.asset(
                              AssetUrls.favCircle,
                              height: 100.w,
                              width: 100.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        widthBox(16),
                        Container(
                          alignment: Alignment.center,
                          height: 44.h,
                          width: 44.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 28.50,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  AssetUrls.bell,
                                  height: 25.w,
                                  width: 25.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 25,
                                top: 5,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.red,
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        widthBox(16),

                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 44.w,
                          width: 44.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 28.50,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Icon(Icons.person, size: 32),
                        ),
                      ],
                    ),
                  ],
                ),
                heightBox(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome, Mypcot !!',
                          style: TextStyle(
                            color: AppColors.primary.withOpacity(0.8),
                            fontSize: 20.sp,
                            fontFamily: Typo.rBold,
                          ),
                        ),
                        Text(
                          'here is your dashboard.....',
                          style: TextStyle(
                            color: AppColors.primary.withOpacity(0.4),
                            fontSize: 14.sp,
                            fontFamily: Typo.rSemiBold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 55.w,
                      width: 55.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.white, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 28.50,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.search,
                        size: 42,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
                heightBox(32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  width: double.infinity,
                  height: 228.h,
                  decoration: BoxDecoration(
                    color: AppColors.lighBlue,
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
                            child: SvgPicture.asset(
                              AssetUrls.orders,
                              fit: BoxFit.cover,
                            ),
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
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
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
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
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
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            50,
                                          ),
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
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2.w,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            50.r,
                                          ),
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
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2.w,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            50.r,
                                          ),
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
                ),
                heightBox(32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'January, 23 2021',
                          style: TextStyle(
                            color: AppColors.primary.withOpacity(0.8),
                            fontSize: 14,
                            fontFamily: Typo.rRegular,
                          ),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 24,
                            fontFamily: Typo.rSemiBold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 4,
                        right: 10,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30.50,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownMenuItem(
                        child: Row(
                          children: [
                            Text(
                              'TIMELINE',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 14,
                                fontFamily: Typo.rSemiBold,
                              ),
                            ),
                            widthBox(8),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(
                        left: 10,
                        top: 4,
                        right: 4,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 30.50,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: AppColors.primary,
                              size: 20,
                            ),
                            widthBox(8),
                            Text(
                              'JAN, 2021',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 14,
                                fontFamily: Typo.rSemiBold,
                              ),
                            ),
                            widthBox(8),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90,
                  child: PageView.builder(
                    controller: PageController(
                      viewportFraction:
                          0.16, // 👈 controls how many items fit in screen
                      initialPage: selectedIndex,
                    ),

                    itemCount: days.length,
                    onPageChanged: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      bool isSelected = selectedIndex == index;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            days[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? Colors.teal : Colors.grey,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            dates[index].toString(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: isSelected ? Colors.teal : Colors.black,
                            ),
                          ),
                          if (isSelected)
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.teal,
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
                heightBox(32),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 16.50,
                        offset: Offset(0, 8),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          heightBox(16),
                          Text(
                            'New order created',
                            style: TextStyle(
                              color: AppColors.primary.withOpacity(0.8),
                              fontSize: 20.sp,
                              fontFamily: Typo.rBold,
                            ),
                          ),
                          heightBox(4),
                          Text(
                            'New Order created with order',
                            style: TextStyle(
                              color: AppColors.appOrange.withOpacity(0.6),
                              fontSize: 14.sp,
                              fontFamily: Typo.rSemiBold,
                            ),
                          ),
                          heightBox(20),

                          Text(
                            '9:00 AM',
                            style: TextStyle(
                              color: AppColors.appOrange2,
                              fontSize: 12.sp,
                              fontFamily: Typo.rSemiBold,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: AppColors.appOrange2,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.appOrange2,
                        radius: 35.r,
                        child: SvgPicture.asset(
                          AssetUrls.group900,
                          // fit: BoxFit.contain,
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1000),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
