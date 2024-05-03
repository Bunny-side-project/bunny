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

    // 연한 색상 그라디언트
    Paint backgroundPaint = Paint()
      ..shader = SweepGradient(
        startAngle: -pi / 2,
        endAngle: 3 * pi / 2,
        colors: [Color(0xFFF6F6F6), Color(0xFFF6F6F6)],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    double arcAngle = 2 * pi * (percentage / 100);
    double gradientOpacity = (percentage / 100); // 값이 채워질수록 색상의 투명도를 변경

    // 그라디언트 색상 계산
    Color startColor = Color(0xFFBCECFF);
    Color endColor = Color(0xFFDECDFF);
    Color gradientColor = Color.lerp(startColor, endColor, gradientOpacity)!;

    // 차트 그라디언트
    Paint gradientPaint = Paint()
      ..shader = SweepGradient(
        startAngle: -pi ,
        endAngle: -pi / 2 + arcAngle,
        colors: [startColor, gradientColor],
      ).createShader(Rect.fromCircle(center: center, radius: radius))
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, arcAngle, false, gradientPaint);
  }

  @override
  bool shouldRepaint(PieChart old) {
    return old.percentage != percentage;
  }
}





// import 'dart:math';
// import 'package:flutter/material.dart';

// class PieChart extends CustomPainter {

//   int percentage;
//   double textScaleFactor;
//   Color textColor;
//   PieChart({
//     this.percentage = 0, // 기본값을 0으로 설정
//     this.textScaleFactor = 1.0, // 기본값을 1.0으로 설정
//     this.textColor = Colors.black, // 기본값을 검은색으로 설정
//   });
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//         ..color = Color.fromARGB(255, 204, 203, 203)
//         ..strokeWidth = 15.0
//         ..style = PaintingStyle.stroke
//         ..strokeCap = StrokeCap.round;


//     double radius = min(size.width / 2 - paint.strokeWidth / 2 , size.height / 2 - paint.strokeWidth/2);
//     Offset center = Offset(size.width / 2, size.height/ 2);

//     canvas.drawCircle(center, radius, paint);
//     drawArc(paint, canvas, center, radius);
//     // drawText(canvas, size, "$percentage / 100");
//   }

//   void drawArc(Paint paint, Canvas canvas, Offset center, double radius) {
//     double arcAngle = 2 * pi * (percentage / 100);
//     paint..color = Color(0xFF98A2FF);
//     canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2, arcAngle, false, paint);
//   }

//   // void drawText(Canvas canvas, Size size, String text) {
//   //   double fontSize = getFontSize(size, text);

//   //   TextSpan sp = TextSpan(style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: textColor), text: text);
//   //   TextPainter tp = TextPainter(text: sp, textDirection: TextDirection.ltr);

//   //   tp.layout();
//   //   double dx = size.width / 2 - tp.width / 2;
//   //   double dy = size.height / 2 - tp.height / 2;

//   //   Offset offset = Offset(dx, dy);
//   //   tp.paint(canvas, offset);
//   // }

//   double getFontSize(Size size, String text) {
//     return size.width / text.length * textScaleFactor;
//   }

//   @override
//   bool shouldRepaint(PieChart old) {
//     return old.percentage != percentage;
//   }
// }