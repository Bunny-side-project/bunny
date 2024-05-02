import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class intro_save2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
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
                              'assets/vectors/icon_mobile_signal_3_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 7, 0.2),
                          child: SizedBox(
                            width: 17,
                            height: 11.8,
                            child: SvgPicture.asset(
                              'assets/vectors/wifi_8_x2.svg',
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
                                  'assets/vectors/battery_end_7_x2.svg',
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
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 48),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '아끼고 싶은 항목을 설정해주세요',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: -0.5,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 10.9, 47),
              child: SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(27.5),
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(27.5),
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(27.5),
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 12.9, 55),
              child: SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 12.9, 55),
              child: SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 12.9, 95),
              child: SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(27.5),
                      ),
                      child: Container(
                        width: 55,
                        height: 55,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 12.9, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF98A2FF),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  width: 130,
                  padding: EdgeInsets.fromLTRB(1, 11, 0, 11),
                  child: Text(
                    '다음',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      height: 1.4,
                      letterSpacing: -0.5,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}