import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/core/componets/nav_items_conatiner.dart';
import 'package:mypcot/core/componets/nav_items_list.dart';
import 'package:mypcot/core/componets/order_banner_method.dart';
import 'package:mypcot/core/const/asseturls.dart';
import 'package:mypcot/core/const/colorpallate.dart';
import 'package:mypcot/core/const/typography.dart';
import 'package:mypcot/core/extensions/custome_sizeboxed.dart';
import 'package:mypcot/core/extensions/widget_extention.dart';
import 'package:mypcot/features/Home/bloc/Home_bloc.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();

  int selectedIndex = 4;

  final List<String> days = [];
  final List<int> dates = [];

  @override
  void initState() {
    super.initState();
    generateDates();
  }

  void generateDates() {
    DateTime today = DateTime.now();

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
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightBox(68),
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
                              onPressed: () {},
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
                              clipBehavior: Clip.none,
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
                                  left: 25.w,
                                  top: 5.h,
                                  child: CircleAvatar(
                                    radius: 10.r,
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
                              border: Border.all(
                                color: Colors.white,
                                width: 2.w,
                              ),
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
                  ).screenPadding,
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
                          border: Border.all(color: Colors.white, width: 2.w),
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
                          size: 42.w,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ).screenPadding,
                  heightBox(32),
                  SizedBox(
                    height: 230.h,
                    child: PageView(
                      controller: _pageController,
                      children: [
                        order_banner_method(bgColor: AppColors.lighBlue),
                        order_banner_method(bgColor: AppColors.appGreen),
                        order_banner_method(bgColor: AppColors.appPink),
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
                              fontSize: 14.sp,
                              fontFamily: Typo.rRegular,
                            ),
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 24.sp,
                              fontFamily: Typo.rSemiBold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30.h,
                        padding: EdgeInsets.only(
                          left: 20.w,
                          top: 4.h,
                          right: 10.w,
                          bottom: 4.h,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 30.50.r,
                              offset: Offset(0, 1.h),
                              spreadRadius: 0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: DropdownMenuItem(
                          child: Row(
                            children: [
                              Text(
                                'TIMELINE',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 14.sp,
                                  fontFamily: Typo.rSemiBold,
                                ),
                              ),
                              widthBox(8.w),
                              Icon(Icons.arrow_drop_down, size: 20.sp),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 30.h,
                        padding: EdgeInsets.only(
                          left: 10.w,
                          top: 4.h,
                          right: 4.w,
                          bottom: 4.h,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 30.50.r,
                              offset: Offset(0, 1.h),
                              spreadRadius: 0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: DropdownMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: AppColors.primary,
                                size: 20.sp,
                              ),
                              widthBox(8.w),
                              Text(
                                'JAN, 2021',
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 14.sp,
                                  fontFamily: Typo.rSemiBold,
                                ),
                              ),
                              widthBox(8.w),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).screenPadding,

                  SizedBox(
                    height: 90.h,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: PageController(
                        viewportFraction: 0.16,
                        initialPage: selectedIndex,
                      ),
                      itemCount: days.length,
                      onPageChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        final isSelected = selectedIndex == index;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              days[index],
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.teal : Colors.grey,
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              dates[index].toString(),
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.teal : Colors.black,
                              ),
                            ),
                            if (isSelected)
                              Container(
                                margin: EdgeInsets.only(top: 4.h),
                                height: 6.h,
                                width: 6.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.teal,
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ).screenPadding,

                  heightBox(32.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.w),
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    width: double.infinity,
                    height: 170.h,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3F000000).withOpacity(0.16),
                          blurRadius: 16.5.r,
                          offset: Offset(0, 8.h),
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
                            heightBox(16.h),
                            Text(
                              'New order created',
                              style: TextStyle(
                                color: AppColors.primary.withOpacity(0.8),
                                fontSize: 20.sp,
                                fontFamily: Typo.rBold,
                              ),
                            ),
                            heightBox(4.h),
                            Text(
                              'New Order created with order',
                              style: TextStyle(
                                color: AppColors.appOrange.withOpacity(0.6),
                                fontSize: 14.sp,
                                fontFamily: Typo.rSemiBold,
                              ),
                            ),
                            heightBox(20.h),
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
                              size: 20.sp,
                              color: AppColors.appOrange2,
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.appOrange2,
                          radius: 35.r,
                          child: SvgPicture.asset(
                            AssetUrls.group900,
                            height: 60.h,
                            width: 60.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -20.h,
            child: Stack(
              children: [
                Container(
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.14),
                        blurRadius: 20.r,
                        offset: Offset(0, -4.h),
                      ),
                    ],
                  ),
                ),

                SvgPicture.asset(
                  AssetUrls.bottomnav,
                  color: AppColors.white,
                  height: 90.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                SizedBox(
                  height: 70.h,
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      final bloc = context.read<HomeBloc>();

                      int selectedIndex = 0;
                      if (state is NavigationState) {
                        selectedIndex = state.selectedIndex;
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(2, (index) {
                                return navItems(
                                  icon: navIcons[index],
                                  text: navLabels[index],
                                  ontap: () => bloc.add(TabSelected(index)),
                                  isSelected: selectedIndex == index,
                                );
                              }),
                            ),
                          ),

                          SizedBox(width: 42.w),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(2, (index) {
                                final actualIndex = index + 2;
                                return navItems(
                                  icon: navIcons[actualIndex],
                                  text: navLabels[actualIndex],
                                  ontap: () =>
                                      bloc.add(TabSelected(actualIndex)),
                                  isSelected: selectedIndex == actualIndex,
                                );
                              }),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 24.h,
            left: 152.w,
            child: Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: Icon(Icons.add, color: AppColors.white, size: 34.sp),
            ),
          ),
        ],
      ),
    );
  }
}
