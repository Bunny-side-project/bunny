import 'package:flutter/material.dart';
// import 'package:flutter_app/pages/start4.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'start4.dart';
import 'start2.dart';

class start3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                              'assets/vectors/icon_mobile_signal_7_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1, 7, 0.2),
                          child: SizedBox(
                            width: 17,
                            height: 11.8,
                            child: SvgPicture.asset(
                              'assets/vectors/wifi_9_x2.svg',
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
                                  'assets/vectors/battery_end_1_x2.svg',
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
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '반갑습니다. 홍길동 님. ',
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
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 41),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '수령하시는 급여와 근무시간을 알려주세요.',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: Color(0xFF808080),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '기준',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 28),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE7E7E7)),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 17, 15, 15),
                child: Text(
                  '월급',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF808080),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '금액',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 28),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Color(0xFFE7E7E7)),
            //     borderRadius: BorderRadius.circular(10),
            //     color: Color(0xFFFFFFFF),
            //   ),
            //   child: Container(
            //     padding: EdgeInsets.fromLTRB(15, 17, 15, 15),
            //     child: Text(
            //       '월급',
            //       style: GoogleFonts.getFont(
            //         'Roboto Condensed',
            //         fontWeight: FontWeight.w500,
            //         fontSize: 15,
            //         color: Color(0xFF808080),
            //       ),
            //     ),
            //   ),
            // ),

// Container(
//                         margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 27),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               child: Container(
//                                 margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Color(0xFFE7E7E7)),
//                                   borderRadius: BorderRadius.circular(10),
//                                   color: Color(0xFFFFFFFF),
//                                 ),
//                                 height: 60,
//                                 child: Container(
//                                   padding: EdgeInsets.fromLTRB(18.4, 16, 6, 16),
//                                   child: TextField(
//                                     onChanged: (text) {
//                                       // 입력 로직
//                                     },
//                                     style: GoogleFonts.getFont(
//                                       'Roboto Condensed',
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 15,
//                                       color: Color(0xFF808080),
//                                     ),
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       contentPadding:
//                                           EdgeInsets.symmetric(vertical: 8),
//                                       hintText:
//                                           '성별을 입력하세요.', // 사용자에게 힌트를 제공할 수 있습니다.
//                                       hintStyle: GoogleFonts.getFont(
//                                         'Roboto Condensed',
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 15,
//                                         color: Color(0xFF808080),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 27),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFE7E7E7)),
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 17, 15, 16),
                child: Text(
                  '320만 원',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xFF808080),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 9),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '출근일',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE7E7E7)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(1, 16, 0, 16),
                        child: Text(
                          '주 5회',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFF808080),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE7E7E7)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 17, 1.8, 15),
                        child: Text(
                          '월, 화, 수, 목, 금',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFF808080),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '출퇴근시간',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 69),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 1, 20, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE7E7E7)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 5.7, 16),
                        child: Opacity(
                          opacity: 0.9,
                          child: Text(
                            '9:00',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF808080),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFE7E7E7)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 4.2, 16),
                        child: Text(
                          '18:00',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFF808080),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(6.5, 0, 23.4, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => start2()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFCFCFCF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(45, 11, 0, 11),
                            child: Text(
                              '이전',
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
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => start4()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF98A2FF),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(45, 11, 0, 11),
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
