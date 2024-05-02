import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Frame23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(24.5, 0, 11.6, 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            '9:41',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              height: 1.3,
                              letterSpacing: -0.4,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 8, 0),
                                child: SizedBox(
                                  width: 18,
                                  height: 12,
                                  child: SvgPicture.asset(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 7, 0.2),
                                child: SizedBox(
                                  width: 17,
                                  height: 11.8,
                                  child: SvgPicture.asset(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF1C1C1E),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(7.4, 0, 7.4, 0),
                                        child: Text(
                                          '70',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 10,
                                            height: 1.3,
                                            letterSpacing: 0.1,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 3.8),
                                    child: SizedBox(
                                      width: 1.4,
                                      height: 4.2,
                                      child: SvgPicture.asset(
                                        'assets/vectors/Unknown',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.2, 0, 0, 13),
                    child: SizedBox(
                      width: 213,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 12, 1),
                            child: SizedBox(
                              width: 145.8,
                              child: Text(
                                '버니',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Color(0xFFA9A9A9),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                            child: Text(
                              '아끼기',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(),
                        gradient: LinearGradient(
                          begin: Alignment(0, -0.967),
                          end: Alignment(-1, 1),
                          colors: <Color>[Color(0xFFBCECFF), Color(0xFFDECDFF)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 45),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE6E6E6),
                                      ),
                                      child: Container(
                                        width: 360,
                                        height: 1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 21),
                                    child: Text(
                                      '‘아끼기’를 통해
                                  습관적인 지출을 줄여보세요. ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15, 0, 0, 80),
                                    child: Text(
                                      '불필요한 소비를 줄여/줄이고
                                  토끼에게 밥을 주세요!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                        height: 1.5,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 0, 13, 84),
                                    child: Stack(
                                      children: [
                                        SizedBox(
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 187,
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 72, 22),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              'assets/images/free_icon_cloud_7280692.png',
                                                            ),
                                                          ),
                                                        ),
                                                        child: Container(
                                                          width: 50,
                                                          height: 50,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 22, 0, 0),
                                                      width: 65,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(0x0D000000),
                                                            offset: Offset(0, 0),
                                                            blurRadius: 2.5,
                                                          ),
                                                        ],
                                                      ),
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/Unknown',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 14, 0, 8),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                        'assets/images/free_icon_cloud_7280692.png',
                                                      ),
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          left: 148,
                                          bottom: 10.5,
                                          child: Container(
                                            width: 28,
                                            height: 26.5,
                                            child: SizedBox(
                                              width: 28,
                                              height: 26.5,
                                              child: SvgPicture.asset(
                                                'assets/vectors/Unknown',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFA4E075),
                                    ),
                                    child: Container(
                                      width: 360,
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 39,
                              bottom: 34.6,
                              child: Container(
                                width: 106.4,
                                height: 139.4,
                                child: SizedBox(
                                  width: 106.4,
                                  height: 139.4,
                                  child: SvgPicture.asset(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 33,
                              bottom: 34.3,
                              child: Container(
                                width: 119,
                                height: 54.7,
                                child: SizedBox(
                                  width: 119,
                                  height: 54.7,
                                  child: SvgPicture.asset(
                                    'assets/vectors/Unknown',
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 59,
                              bottom: 73.1,
                              child: SizedBox(
                                width: 62.8,
                                height: 85.1,
                                child: SvgPicture.asset(
                                  'assets/vectors/Unknown',
                                ),
                              ),
                            ),
                            Positioned(
                              right: 19.8,
                              bottom: 32.7,
                              child: Transform(
                                transform: Matrix4.identity()..rotationZ(0.866529995),
                                child: Container(
                                  width: 109.2,
                                  height: 103.3,
                                  child: SizedBox(
                                    width: 109.2,
                                    height: 103.3,
                                    child: SvgPicture.asset(
                                      'assets/vectors/Unknown',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 119,
                              top: 196,
                              child: SizedBox(
                                height: 88,
                                child: Text(
                                  '아낀 만큼 버니에게
                            당근을 줄 수 있어요',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    height: 1.5,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFB69B65),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFFFFFFF)),
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              width: 140,
                              height: 50,
                            ),
                          ),
                        ),
                  Container(
                          padding: EdgeInsets.fromLTRB(0, 51, 0, 58),
                          child: Text(
                            '시작하기',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              height: 1.4,
                              letterSpacing: -0.5,
                              color: Color(0xFF98A2FF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 137,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF82D341),
                ),
                child: Container(
                  width: 360,
                  height: 12,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 102,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF98A2FF),
                ),
                child: Container(
                  width: 180,
                  height: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}