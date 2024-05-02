import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Frame17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Stack(
        children: [
          Positioned(
            left: -24.5,
            right: -11.6,
            top: -15,
            bottom: -176,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1, -1),
                  end: Alignment(1, 1),
                  colors: <Color>[Color(0xFFDECDFF), Color(0xFFBCECFF)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Container(
                width: 360,
                height: 740,
              ),
            ),
          ),
    Container(
            padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 176),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 159),
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
                  margin: EdgeInsets.fromLTRB(0, 0, 13.9, 44),
                  child: Text(
                    '안녕하세요. 버니입니다.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 12.9, 88),
                  child: Text(
                    '로고',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 11.9, 6),
                  child: Text(
                    '버니와 함께 지금 벌고 있는 돈을 확인해 볼까요?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 2.9, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: Container(
                    width: 140,
                    padding: EdgeInsets.fromLTRB(0, 11, 0, 11),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}