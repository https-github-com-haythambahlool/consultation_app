import 'package:flutter/material.dart';

import '../../constant/const.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var rect = Offset.zero & size;

    paint.shader = const LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        stops: [
          0.5,
          1
        ],
        colors: [
          kprimColor,
          ksecColor,
        ]).createShader(rect);

    //  ui
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    path.moveTo(0, size.height * 0.40);
    path.quadraticBezierTo(
        size.width / 2, size.height / 1.5, size.width, size.height * 0.40);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
