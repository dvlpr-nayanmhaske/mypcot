// import 'dart:ui';

// import 'package:flutter/material.dart';

// class BottomNavShadowPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.black.withOpacity(0.25)
//       ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10); // blur shadow

//     final path = Path();

//     // Draw straight line left -> before notch
//     path.moveTo(0, 0);
//     path.lineTo(size.width * 0.35, 0);

//     // Arc notch (skip shadow here)
//     path.arcToPoint(
//       Offset(size.width * 0.65, 0),
//       radius: const Radius.circular(38),
//       clockwise: false,
//     );

//     // Continue line after notch
//     path.lineTo(size.width, 0);

//     // Close path at top (just a thin strip for shadow)
//     path.lineTo(size.width, -20);
//     path.lineTo(0, -20);
//     path.close();

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
