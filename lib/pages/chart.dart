import 'dart:math';
import 'package:flutter/material.dart';

class PieChart extends CustomPainter {
  int percentage;
  double textScaleFactor;
  Color textColor;

  PieChart({
    this.percentage = 0,
    this.textScaleFactor = 1.0,
    this.textColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 15.0;
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double radius = min(size.width / 2 - strokeWidth / 2, size.height / 2 - strokeWidth / 2);
    Offset center = Offset(size.width / 2, size.height / 2);

    // 배경 원 그리기
    Paint backgroundPaint = Paint()
      ..color = Color(0xFFF6F6F6)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    // 채워진 부분의 각도
    double arcAngle = 2 * pi * (percentage / 100);

    // 그라디언트 색상 설정
    Color startColor = Color(0xFFDECDFF);
    Color endColor = Color(0xFFBCECFF);

    // 원형 그라디언트
    Rect rect = Rect.fromCircle(center: center, radius: radius);
    Paint gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [startColor, endColor],
      ).createShader(rect)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // 그라디언트가 적용된 아크 그리기
    canvas.drawArc(rect, -pi / 2, arcAngle, false, gradientPaint);
  }

  @override
  bool shouldRepaint(PieChart old) {
    return old.percentage != percentage;
  }
}
