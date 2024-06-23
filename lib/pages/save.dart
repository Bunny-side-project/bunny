import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bunny.dart';
import 'package:flutter_app/utils.dart';

class Save extends StatefulWidget {
  @override
  _SaveState createState() => _SaveState();
}

// return MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//         body: SingleChildScrollView(
class _SaveState extends State<Save> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
            ),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 14, 0, 12),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            // 아이콘 추가
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(163, 31, 0, 0),
                                child: SvgPicture.asset(
                                  'assets/bunnyIcons/Vector.svg',
                                  width: 35,
                                  height: 39,
                                ),
                              ),
                              SizedBox(
                                width: 120,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.menu),
                                    iconSize: 35),
                              )
                            ]),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                                        child: SizedBox(
                                          width: 213,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Bunny()),
                                                  );
                                                },
                                                child: Container(
                                                  // height: 22,
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 10),
                                                  child: SizedBox(
                                                    // width: 140,
                                                    child: Text(
                                                      '버니',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Inter',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xFFA9A9A9),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Save()),
                                                  );
                                                },
                                                child: Container(
                                                  // height: 22,
                                                  margin: EdgeInsets.fromLTRB(
                                                      47, 0, 0, 10),
                                                  child: Text(
                                                    '아끼',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 20,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFDDDDDD),
                                        ),
                                        child: Container(
                                          width: 300,
                                          height: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF98A2FF),
                                    ),
                                    child: Container(
                                      width: 200,
                                      height: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color(0xFFBCECFF),
                          ),
                          // margin: EdgeInsets.fromLTRB(14, 0, 13, 84),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 187,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                10, 20, 0, 0),
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
                                          // Container(
                                          //   margin:
                                          //       EdgeInsets.fromLTRB(70, 30 , 0, 0),
                                          //   child: SizedBox(
                                          //     width: 55,
                                          //     height: 50,
                                          //     child: SvgPicture.asset(
                                          //       'assets/vectors/union_x2.svg',
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 34, 10, 0),
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
                                bottom: 108,
                                child: Container(
                                  child: SizedBox(
                                    width: 28,
                                    height: 26.5,
                                    // child: SvgPicture.asset(
                                    //   'assets/vectors/vector_x2.svg',
                                    // ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFA1DA75),
                          ),
                          child: Container(
                            width: 460,
                            height: 50,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(130, 211, 65, 1),
                          ),
                          child: Container(
                            width: 460,
                            height: 10,
                          ),
                        ),
                        Stack(
                          children: [
                            // 갈색 박스 컨테이너
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFB69B65),
                                ),
                                child: Container(
                                  width: 460,
                                  height: 60,
                                ),
                              ),
                            ),
                            // 커피, 담배, 기타 컨테이너
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 20, 20, 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0D000000),
                                            offset: Offset(0, 0),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 19, 0, 7),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 11),
                                              child: SizedBox(
                                                width: 29,
                                                height: 37,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/group_156_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0.7, 0, 0, 0),
                                              child: Text(
                                                '커피',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color(0xFF737373),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0D000000),
                                            offset: Offset(0, 0),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 16, 19, 11),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 17),
                                              child: SizedBox(
                                                width: 49,
                                                height: 30,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/group_157_x2.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  20, 0, 0, 0),
                                              child: Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                  '담배',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Color(0xFF737373),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xFFFFFFFF),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x0D000000),
                                            offset: Offset(0, 0),
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                      child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 15, 0, 11),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 11),
                                              child: SizedBox(
                                                width: 37,
                                                height: 37,
                                                child: SvgPicture.asset(
                                                  'assets/bunnyIcons/Group_158.svg',
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  2.8, 0, 0, 0),
                                              child: Text(
                                                '기타',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color(0xFF737373),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 25, 34),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0D000000),
                                offset: Offset(0, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 17),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF98A2FF),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.fromLTRB(19, 11, 12, 12),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 10.5, 0),
                                            child: SizedBox(
                                              width: 165.2,
                                              child: Text(
                                                '오늘의 아끼기',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18,
                                                color: Color(0xFFFFFFFF),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '총 ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    height: 1.3,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '2만 6,500',
                                                ),
                                                TextSpan(
                                                  text: '원',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    height: 1.3,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 12, 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 8.6, 0),
                                            child: Text(
                                              '커피',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color(0xFF737373),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 8, 8, 6),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF98A2FF),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                width: 10,
                                                height: 10,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 8, 0, 6),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFF98A2FF),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                width: 10,
                                                height: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          text: ' 6,500',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color: Color(0xFFFF7B7B),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '원',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13,
                                                height: 1.3,
                                                color: Color(0xFFFF7B7B),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 12, 13),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 8.6, 0),
                                              child: Text(
                                                '담배',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Color(0xFF737373),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 8, 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFACD7FF),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  width: 10,
                                                  height: 10,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 8, 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFACD7FF),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  width: 10,
                                                  height: 10,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 0, 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFACD7FF),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  width: 10,
                                                  height: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                        child: RichText(
                                          text: TextSpan(
                                            text: '3,000',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Color(0xFFFF7B7B),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '원',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  height: 1.3,
                                                  color: Color(0xFFFF7B7B),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(16, 0, 12, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 8.6, 0),
                                              child: Text(
                                                '기타',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Color(0xFF737373),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 8, 0, 4),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFDECDFF),
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Container(
                                                  width: 10,
                                                  height: 10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                        child: RichText(
                                          text: TextSpan(
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13,
                                              color: Color(0xFFFF7B7B),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '1만 7,000',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  height: 1.3,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '원',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Color(0xFFFF7B7B),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0), // Container의 외부 여백 설정
                          padding: EdgeInsets.all(10.0), // Container의 내부 여백 설정
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.white, // Container의 배경색 설정
                            borderRadius: BorderRadius.circular(
                                10.0), // Container의 모서리를 둥글게 만듭니다.
                            boxShadow: [
                              BoxShadow(
                                color:
                                    Colors.grey.withOpacity(0.2), // 그림자 색상 설정
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: TableCalendar(
                            locale: 'ko_KR', // 한국어로 설정
                            firstDay: DateTime.utc(2010, 10, 16),
                            lastDay: DateTime.utc(2030, 3, 14),
                            focusedDay: _focusedDay,
                            calendarFormat: _calendarFormat,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay, day);
                            },
                            onDaySelected: (selectedDay, focusedDay) {
                              setState(() {
                                _selectedDay = selectedDay;
                                _focusedDay =
                                    focusedDay; // update `_focusedDay` here as well
                              });
                            },
                            onFormatChanged: (format) {
                              if (_calendarFormat != format) {
                                setState(() {
                                  _calendarFormat = format;
                                });
                              }
                            },
                            onPageChanged: (focusedDay) {
                              _focusedDay = focusedDay;
                            },
                            headerStyle: HeaderStyle(
                              titleCentered: true,
                              titleTextStyle: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              formatButtonVisible: false,
                            ),

                            daysOfWeekStyle: DaysOfWeekStyle(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.1,
                                  ),
                                ),
                              ),
                            ),
                            daysOfWeekHeight: 40,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 30, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.5),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x0D000000),
                                offset: Offset(0, 0),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20, 19, 15, 23),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
      
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 0, 31),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF6F6F6),
                                    ),
                                    child: Container(
                                      width: 270,
                                      height: 1,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '이번 달 아끼기 누적액',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.3, 0, 10.3, 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '총 37만 6,500원 ',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(2.7, 0, 2.7, 30),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 5.3, 0),
                                          child: Text(
                                            '지난 달 같은 기간보다 ',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Color(0xFF737373),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 6.1, 0),
                                          child: Text(
                                            '5만 8,000원 ',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Color(0xFF98A2FF),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '더 아꼈어요',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xFF737373),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          right: 87.6,
                                          bottom: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFB7B7B7),
                                            ),
                                            child: Container(
                                              width: 1,
                                              height: 80,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 32),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 14, 28, 13),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF98A2FF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 30, 0),
                                                      child: SizedBox(
                                                        width: 29,
                                                        height: 37,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/group_1561_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 2, 0, 2),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets
                                                                .fromLTRB(0, 0,
                                                                    11.6, 1),
                                                            child: Text(
                                                              '커피 14회',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Roboto Condensed',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xFF737373),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '6만 2,000원',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto Condensed',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xFF000000),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 35),
                                              child: Align(
                                                alignment: Alignment.topLeft,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 12, 18, 11),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFACD7FF),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                        ),
                                                        child: Container(
                                                          width: 10,
                                                          height: 10,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 2, 20, 1),
                                                      child: SizedBox(
                                                        width: 49,
                                                        height: 30,
                                                        child: SvgPicture.asset(
                                                          'assets/vectors/group_260_x2.svg',
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  11.6, 1),
                                                          child: Text(
                                                            '담배 39회',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto Condensed',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xFF737373),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '2만 3,500원',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Roboto Condensed',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 17.1, 21),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 14, 24, 13),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFDECDFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                      ),
                                                      child: Container(
                                                        width: 10,
                                                        height: 10,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 26, 0),
                                                    child: SizedBox(
                                                      width: 37,
                                                      height: 37,
                                                      child: SvgPicture.asset(
                                                        'assets/vectors/group_1581_x2.svg',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 2, 0, 2),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(0, 0,
                                                                  18.6, 1),
                                                          child: Text(
                                                            '기타 17회',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Roboto Condensed',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                              color: Color(
                                                                  0xFF737373),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          '29만 1,000원',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Roboto Condensed',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xFF000000),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 13),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 4, 10, 3),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFB7B7B7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(3),
                                                      ),
                                                      child: Container(
                                                        width: 6,
                                                        height: 6,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 9.8, 0),
                                                    child: Text(
                                                      '택시',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xFFB7B7B7),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '171,000원',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11,
                                                      color: Color(0xFFB7B7B7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  5.5, 0, 5.5, 13),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 9.8, 0),
                                                    child: Text(
                                                      '야식',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xFFB7B7B7),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '80,000원',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11,
                                                      color: Color(0xFFB7B7B7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  6.5, 0, 6.5, 0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 7.2, 0),
                                                    child: Text(
                                                      '그 외',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 11,
                                                        color:
                                                            Color(0xFFB7B7B7),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '40,000원',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11,
                                                      color: Color(0xFFB7B7B7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          right: 85.6,
                                          bottom: 29,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFB7B7B7),
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Container(
                                              width: 6,
                                              height: 6,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 85.6,
                                          bottom: 3,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFB7B7B7),
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                            child: Container(
                                              width: 6,
                                              height: 6,
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
                      ],
                    ),
                  ),
                  Positioned(
                    right: 33,
                    top: 280,
                    child: Container(
                      // width: 119,
                      // height: 54.7,
                      child: SizedBox(
                        width: 119,
                        height: 54.7,
                        child: SvgPicture.asset(
                          'assets/vectors/layer_115_x2.svg',
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   right: 59,
                  //   top: 194.8,
                  //   child: SizedBox(
                  //     width: 62.8,
                  //     height: 85.1,
                  //     child: SvgPicture.asset(
                  //       'assets/vectors/container_1_x2.svg',
                  //     ),
                  //   ),
                  // ),
                  // Positioned(
                  //   right: 19.8,
                  //   top: 217,
                  //   child: Transform(
                  //     transform: Matrix4.identity()..rotateZ(0.866529995),
                  //     child: Container(
                  //       width: 109.2,
                  //       height: 103.3,
                  //       child: SizedBox(
                  //         width: 109.2,
                  //         height: 103.3,
                  //         child: SvgPicture.asset(
                  //           'assets/vectors/layer_11_x2.svg',
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Positioned(
                    left: 39,
                    top: 200,
                    child: Container(
                      // width: 106.4,
                      // height: 139.4,
                      child: SizedBox(
                        width: 106.4,
                        height: 139.4,
                        child: SvgPicture.asset(
                          'assets/bunnyIcons/BunnyImgSvg.svg',

                          // 'assets/vectors/container_4_x2.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
