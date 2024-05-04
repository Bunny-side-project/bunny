import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'save.dart';
import 'chart.dart';

// 현재 시간 update 기능
import 'dart:async';
import 'package:intl/intl.dart'; // 요일 DateFormat()

List<double> points = [50, 0, 73, 100, 150, 120, 200, 80];

// class bunny extends StatelessWidget {
class bunny extends StatefulWidget {
  // Stateless 위젯은 UI update 불가능함
  // State 클래스 통해 상태관리함, setState() 호출하여 UI 재구성하므로 계속 변경될 UI 부분은 setState() 사용 필요

  bunny({Key? key}) : super(key: key);

  @override
  _bunnyPageWidgetState createState() => _bunnyPageWidgetState();
}

// StatefulWidget 만들면서 class 추가 및 분리함
class _bunnyPageWidgetState extends State<bunny> {
  // '현재 시간' 표시 위한 변수
  Timer? _timer;
  String _timeString = '';
  String _timeStringWeekday = '';
  String _timeStringDay = '';
  String _timeStringMonth = '';

  @override
  void initState() {
    // 현재 시간을 가져와 문자열로 변환
    super.initState();
    _timeString = _formatDateTime(DateTime.now());
    // 추가
    _timeStringWeekday = _formatWeekday(DateTime.now());
    _timeStringDay = _formatDay(DateTime.now());
    _timeStringMonth = _formatMonth(DateTime.now());
    // _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime()); // 1초마다 _getTime() 호출하여 업데이트
    _timer = Timer.periodic(Duration(days: 1), (Timer t) => _getTime());
  }

  @override
  void dispose() {
    // 타이머 취소하여 리소스 정리
    _timer?.cancel();
    super.dispose();
  }

  // 현재 시간을 가져옴, 화면 표시 위해 setState() 호출, 시간문자열 update
  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    final String formattedWeekday = _formatWeekday(now);
    final String formattedDay = _formatDay(now);
    final String formattedMonth = _formatMonth(now);

    setState(() {
      _timeString = formattedDateTime;
      _timeStringWeekday = formattedWeekday;
      _timeStringDay = formattedDay;
      _timeStringMonth = formattedMonth;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    // 초 단위로 가져옴
    // return "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}:${dateTime.second.toString().padLeft(2, '0')}";
    return "${dateTime.year}. ${dateTime.month.toString().padLeft(2, '0')}. ${dateTime.day.toString().padLeft(2, '0')}. ";
  }

  String _formatWeekday(DateTime weekday) {
    String week_day =
        DateFormat('EEEE', 'ko_KR').format(weekday); // 'EEEE'는 전체 요일 이름을 의미함
    return "${week_day}";
  }

  String _formatDay(DateTime dayTime) {
    return "${dayTime.day.toString().padLeft(2, '0')}";
  }

  String _formatMonth(DateTime monthTime) {
    return "${monthTime.month.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF000000)),
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 14, 0, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(23.5, 0, 10.6, 32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                child: Container(
                  // padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
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
                              margin: EdgeInsets.fromLTRB(4.2, 0, 0, 13),
                              child: SizedBox(
                                width: 213,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // height: 22,
                                      margin:
                                          EdgeInsets.fromLTRB(0, 18, 20, 10),
                                      child: SizedBox(
                                        // width: 145.8,
                                        child: Text(
                                          '버니',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => save()),
                                        );
                                      },
                                      child: Container(
                                        // height: 22,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: Text(
                                          '아끼기',
                                          style: GoogleFonts.getFont(
                                            'Inter',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20,
                                            color: Color(0xFFA9A9A9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //     color: Color(0xFFDDDDDD),
                            //   ),
                            //   child: Container(
                            //     width: 360,
                            //     height: 1,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
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
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 2.4, 1),
                        child: Text(
                          '오늘의 버니',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF262626),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text(
                          // 날짜 부분: 실시간 값 반영되도록 변경함 
                          // '2024. 05. 10. 금 ',
                          _timeString + _timeStringWeekday,
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 23, 45),
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
                child: Stack(
                  children: [
                    // Positioned(
                    //   top: 20,
                    //   child: SizedBox(
                    //     width: 237,
                    //     height: 237,
                    //     child: SvgPicture.asset(
                    //       'assets/vectors/group_43_x2.svg',
                    //     ),
                    //   ),
                    // ),
                    Container(
                      padding: EdgeInsets.fromLTRB(45, 10, 13, 0),
                      child: CustomPaint(
                        // CustomPaint를 그리고 이 안에 차트를 그려줍니다..
                        size: Size(
                            250, 250), // CustomPaint의 크기는 가로 세로 150, 150으로 합니다.
                        painter: PieChart(
                            percentage: 60, // 파이 차트가 얼마나 칠해져 있는지 정하는 변수입니다.
                            textScaleFactor: 1.0, // 파이 차트에 들어갈 텍스트 크기를 정합니다.
                            textColor: Colors.blueGrey),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(12, 110, 13, 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 92),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                                  child: Text(
                                    '5시간 30분', // 이 부분 실시간 변수로 바꿔야 함
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Text(
                                    '퇴근까지 4시간 30분', // 퇴근까지 4시간 30분 => 시간 부분 변수로 추가해야 함
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Color(0xFF949494),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 1, 15),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF98A2FF),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Container(
                                width: 160,
                                padding: EdgeInsets.fromLTRB(40, 16, 12.8, 16),
                                child: RichText(
                                  text: TextSpan(
                                    text: '68,753',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '원',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                          height: 1.3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(24, 10, 25.4, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 7, 22.7, 13),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                11, 0, 5.7, 6),
                                            child: Text(
                                              '초당',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xFF737373),
                                              ),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: '3.47',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color(0xFF000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '원',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13,
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
                                  // Expanded(
                                  //   child: Container(
                                  //     margin:
                                  //         EdgeInsets.fromLTRB(10, 0, 40, 0),
                                  //     child: Container(
                                  //       decoration: BoxDecoration(
                                  //         color: Color(0xFFFFFFFF),
                                  //       ),
                                  //       child: Container(
                                  //         width: 0.1,
                                  //         height: 100,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.fromLTRB(20, 7, 27.2, 13),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                9, 0, 3.2, 6),
                                            child: Text(
                                              '분당',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xFF737373),
                                              ),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: '280',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color(0xFF000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '원',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13,
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
                                  // Expanded(
                                  //   child: Container(
                                  //     margin:
                                  //         EdgeInsets.fromLTRB(40, 0, 10, 0),
                                  //     child: Container(
                                  //       decoration: BoxDecoration(
                                  //         color: Color(0xFFFFFFFF),
                                  //       ),
                                  //       child: Container(
                                  //         width: 0.1,
                                  //         height: 100,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 7, 0, 13),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                17, 0, 6.7, 6),
                                            child: Text(
                                              '시간당',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 13,
                                                color: Color(0xFF737373),
                                              ),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: ' 12,500',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color(0xFF000000),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '원',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 13,
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
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 1.8, 1),
                        child: Text(
                          '이 주의 버니',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF262626),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text(
                          _timeStringWeekday,
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 24, 45),
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
                  padding: EdgeInsets.fromLTRB(11, 14, 11, 21),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 0, 2.9, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 6.5, 0),
                              child: SizedBox(
                                width: 265.5,
                                child: Text(
                                  '월',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: Color(0xFF737373),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '금',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Color(0xFF737373),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: 288,
                            height: 15,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment(-1, 0),
                                        end: Alignment(1, 0),
                                        colors: <Color>[
                                          Color(0xFF9FB6FA),
                                          Color(0xFFF6B1F3)
                                        ],
                                        stops: <double>[1, 0],
                                      ),
                                    ),
                                    child: Container(
                                      width: 270,
                                      height: 15,
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            right: 0,
                                            top: 0,
                                            bottom: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                gradient: LinearGradient(
                                                  begin: Alignment(-1, 0),
                                                  end: Alignment(1, 0),
                                                  colors: <Color>[
                                                    Color(0xFFBCECFF),
                                                    Color(0xFFDECDFF)
                                                  ],
                                                  stops: <double>[0, 1],
                                                ),
                                              ),
                                              child: Container(
                                                width: 288,
                                                height: 15,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 288,
                                            height: 15,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                  child: Container(
                                                    width: 2,
                                                    height: 15,
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                  child: Container(
                                                    width: 2,
                                                    height: 15,
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                  child: Container(
                                                    width: 2,
                                                    height: 15,
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFFFFFF),
                                                  ),
                                                  child: Container(
                                                    width: 2,
                                                    height: 15,
                                                  ),
                                                ),
                                              ],
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
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(108.6, 0, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                            children: [
                              TextSpan(
                                text: '540,387',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.3,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                              TextSpan(
                                text: '원 ',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                              TextSpan(
                                text: '/ 600,000원',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Color(0xFF000000),
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
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 1.8, 1),
                        child: Text(
                          '이 달의 버니',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF262626),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text(
                          _timeStringDay + '일',
                          // '5월',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 24, 45),
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
                  padding: EdgeInsets.fromLTRB(11, 14, 11, 21),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(3, 0, 3, 7),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 1, 6.5, 0),
                                    child: SizedBox(
                                      width: 254.5,
                                      child: Text(
                                        '1일',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 11,
                                          color: Color(0xFF737373),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child: Text(
                                      '31일',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: Color(0xFF737373),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SizedBox(
                                  width: 288,
                                  height: 15,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 0, 18, 0),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin: Alignment(-1, 0),
                                              end: Alignment(1, 0),
                                              colors: <Color>[
                                                Color(0xFF9FB6FA),
                                                Color(0xFFF6B1F3)
                                              ],
                                              stops: <double>[1, 0],
                                            ),
                                          ),
                                          child: Container(
                                            width: 270,
                                            height: 15,
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF6F6F6),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Container(
                                              width: 288,
                                              height: 15,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment(-1, 0),
                                                    end: Alignment(1, 0),
                                                    colors: <Color>[
                                                      Color(0xFFBCECFF),
                                                      Color(0xFFDECDFF)
                                                    ],
                                                    stops: <double>[0, 1],
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10),
                                                  ),
                                                ),
                                                child: Container(
                                                  width: 94,
                                                  height: 15,
                                                ),
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
                            Container(
                              margin: EdgeInsets.fromLTRB(22, 0, 22, 0),
                              child: RichText(
                                text: TextSpan(
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: Color(0xFF000000),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '1,540,387',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        height: 1.3,
                                        color: Color(0xFF98A2FF),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '원 ',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        height: 1.3,
                                        color: Color(0xFF98A2FF),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '/ 2,400,000원',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        color: Color(0xFF000000),
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
                        left: 81,
                        top: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFDECDFF)),
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFFFFFFF),
                          ),
                          child: Container(
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(32, 0, 32, 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 2.4, 1),
                        child: Text(
                          '올해의 버니',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                        child: Text(
                          _timeStringMonth + '월',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color(0xFFB7B7B7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
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
                  padding: EdgeInsets.fromLTRB(11, 14, 11, 21),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 0, 3, 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 1, 6.5, 0),
                              child: SizedBox(
                                width: 254.5,
                                child: Text(
                                  '1월',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: Color(0xFF737373),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                '12월',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Color(0xFF737373),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 22, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(-1, 0),
                                        end: Alignment(1, 0),
                                        colors: <Color>[
                                          Color(0xFFBCECFF),
                                          Color(0xFFDECDFF)
                                        ],
                                        stops: <double>[0, 1],
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          child: Container(
                                            width: 2,
                                            height: 15,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          child: Container(
                                            width: 2,
                                            height: 15,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          child: Container(
                                            width: 2,
                                            height: 15,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                          ),
                                          child: Container(
                                            width: 2,
                                            height: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFF),
                                        ),
                                        child: Container(
                                          width: 2,
                                          height: 15,
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
                        margin: EdgeInsets.fromLTRB(66.6, 0, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                            children: [
                              TextSpan(
                                text: '12,540,387',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  height: 1.3,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                              TextSpan(
                                text: '원 ',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  height: 1.3,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                              TextSpan(
                                text: '/ 28,800,000원',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Color(0xFF000000),
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
      ),
    );
  }
}
