import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'start5.dart';

class start4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector( // GestureDetector를 사용하여 화면 탭 이벤트 감지
      onTap: () {
        Navigator.push( // 화면을 탭하면 start5 페이지로 이동
          context,
          MaterialPageRoute(builder: (context) => start5()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
      child: Stack(
        children: [
          Positioned(
            left: -24.5,
            right: -11.6,
            top: -15,
            bottom: -188,
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
            padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 188),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 159),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // children: [
                    //   Container(
                    //     child: Text(
                    //       '9:41',
                    //       style: GoogleFonts.getFont(
                    //         'Roboto Condensed',
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 17,
                    //         height: 1.3,
                    //         letterSpacing: -0.4,
                    //         color: Color(0xFF000000),
                    //       ),
                    //     ),
                    //   ),
                    //   Container(
                    //     margin: EdgeInsets.fromLTRB(0, 4, 0, 5),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Container(
                    //           margin: EdgeInsets.fromLTRB(0, 1, 8, 0),
                    //           child: SizedBox(
                    //             width: 18,
                    //             height: 12,
                    //             child: SvgPicture.asset(
                    //               'assets/vectors/icon_mobile_signal_2_x2.svg',
                    //             ),
                    //           ),
                    //         ),
                    //         Container(
                    //           margin: EdgeInsets.fromLTRB(0, 1, 7, 0.2),
                    //           child: SizedBox(
                    //             width: 17,
                    //             height: 11.8,
                    //             child: SvgPicture.asset(
                    //               'assets/vectors/wifi_7_x2.svg',
                    //             ),
                    //           ),
                    //         ),
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.start,
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Container(
                    //               margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                    //               child: Container(
                    //                 decoration: BoxDecoration(
                    //                   color: Color(0xFF1C1C1E),
                    //                   borderRadius: BorderRadius.circular(4),
                    //                 ),
                    //                 child: Container(
                    //                   padding: EdgeInsets.fromLTRB(7.4, 0, 7.4, 0),
                    //                   child: Text(
                    //                     '70',
                    //                     style: GoogleFonts.getFont(
                    //                       'Roboto Condensed',
                    //                       fontWeight: FontWeight.w700,
                    //                       fontSize: 10,
                    //                       height: 1.3,
                    //                       letterSpacing: 0.1,
                    //                       color: Color(0xFFFFFFFF),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //             Container(
                    //               margin: EdgeInsets.fromLTRB(0, 5, 0, 3.8),
                    //               child: SizedBox(
                    //                 width: 1.4,
                    //                 height: 4.2,
                    //                 child: SvgPicture.asset(
                    //                   'assets/vectors/battery_end_3_x2.svg',
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 13.9, 222),
                  child: Text(
                    '홍길동 님의 기본급으로 지금 벌고 계신 돈을 계산해볼게요!',
                    textAlign: TextAlign.center,
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 11.9, 0),
                  child: Text(
                    '잠시만 기다려주세요',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.5,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),),
    );
  }
}