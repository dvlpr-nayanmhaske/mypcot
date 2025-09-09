import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetExtention on Widget {
  get screenPadding => Padding(
    padding: EdgeInsets.symmetric(horizontal: 24.w),
    child: this,
  );
}
