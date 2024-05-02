import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'start3.dart';

class start2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 60),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: double.infinity,
                child: SingleChildScrollView(
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
                                        'assets/vectors/icon_mobile_signal_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 1, 7, 0.2),
                                    child: SizedBox(
                                      width: 17,
                                      height: 11.8,
                                      child: SvgPicture.asset(
                                        'assets/vectors/wifi_1_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1C1C1E),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                7.4, 0, 7.4, 0),
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
                                        margin:
                                            EdgeInsets.fromLTRB(0, 5, 0, 3.8),
                                        child: SizedBox(
                                          width: 1.4,
                                          height: 4.2,
                                          child: SvgPicture.asset(
                                            'assets/vectors/battery_end_6_x2.svg',
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
                        margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 45),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '사용자 정보를 입력해주세요',
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
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 9),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '이름',
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
                        height: 60,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(13.8, 17, 13.8, 15),
                          child: TextField(
                            onChanged: (text) {
                              // 입력 로직
                            },
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF808080),
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 8),
                              hintText: '이름을 입력하세요', // 사용자에게 힌트를 제공할 수 있습니다.
                              hintStyle: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF808080),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 4, 9),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '생년월일',
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
                        margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 27),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFE7E7E7)),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFFFFF),
                        ),
                        height: 60,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(18.4, 17, 18.4, 16),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: SizedBox(
                                  height: 18,
                                ),
                              ),
                              TextField(
                                onChanged: (text) {
                                  // 입력 로직
                                },
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF808080),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 8),
                                  hintText: 'YYYY / MM / DD', // 생년월일을 입력하세요.
                                  hintStyle: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color(0xFF808080),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '성별',
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
                        margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 27),
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
                                height: 60,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(18.4, 16, 6, 16),
                                  child: TextField(
                                    onChanged: (text) {
                                      // 입력 로직
                                    },
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF808080),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 8),
                                      hintText:
                                          '성별을 입력하세요.', // 사용자에게 힌트를 제공할 수 있습니다.
                                      hintStyle: GoogleFonts.getFont(
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
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 9),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '직업',
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
                        margin: EdgeInsets.fromLTRB(5.5, 0, 18.4, 9),
                        // width: 300,
                        // height: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFE7E7E7)),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                          ),
                          height: 60,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(18.4, 16, 6, 16),
                            child: TextField(
                              onChanged: (text) {
                                // 입력 로직
                              },
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF808080),
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 8),
                                hintText: '직업을 입력하세요.', // 사용자에게 힌트를 제공할 수 있습니다.
                                hintStyle: GoogleFonts.getFont(
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

                      Container(
                        margin: EdgeInsets.fromLTRB(0, 50, 12.9, 0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 130,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF98A2FF),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => start3()),
                                );
                              },
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
