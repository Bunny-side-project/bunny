import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'start2.dart';

class start1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 13.9, 44),
                  child: Text(
                    '안녕하세요.\n버니입니다.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.fromLTRB(0, 0, 12.9, 88),
                //   child: Text(
                //     '로고',
                //     style: GoogleFonts.getFont(
                //       'Roboto Condensed',
                //       fontWeight: FontWeight.w600,
                //       fontSize: 15,
                //       height: 1.5,
                //       color: Color(0xFFFFFFFF),
                //     ),
                //   ),
                // ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 12.9, 27),
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.white,
                  //       blurRadius: 70.0,
                  //       spreadRadius: 2.0,
                  //       offset: Offset(2, 2),
                  //     ),
                  //   ],
                  // ),
                  child: SvgPicture.asset(
                    'assets/bunnyIcons/Vector.svg',
                    width: 70,
                    height: 71,
                    color: Colors.white,
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 11.9, 6),
                  child: Text(
                    '버니와 함께 지금 벌고 있는 돈을\n확인해 볼까요?',
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
                SizedBox(
                  height: 70.0,
                ),
                TextButton(
                  onPressed: () {
                    print("Button pressed");
                    // Navigate to start2 page when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => start2()),
                    );
                  },
                  style: ButtonStyle(
                    // Define button style here
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFFFFFFFF)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 11)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    side: MaterialStateProperty.all(
                        BorderSide(color: Color(0xFFFFFFFF))),
                  ),
                  child: Container(
                    width: 120,
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      '시작하기',
                      textAlign: TextAlign.center,
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
