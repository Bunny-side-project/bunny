import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'save.dart';
import 'chart.dart';
import 'slider.dart';
// 현재 시간 update 기능
import 'dart:async';
import 'package:intl/intl.dart'; // 요일 DateFormat()

List<double> points = [50, 0, 73, 100, 150, 120, 200, 80];

class Bunny extends StatefulWidget {
  // Stateless 위젯은 UI update 불가능함
  // State 클래스 통해 상태관리함, setState() 호출하여 UI 재구성하므로 계속 변경될 UI 부분은 setState() 사용 필요

  Bunny({Key? key}) : super(key: key);

  @override
  _bunnyPageWidgetState createState() => _bunnyPageWidgetState();
}

// StatefulWidget 만들면서 class 추가 및 분리함
class _bunnyPageWidgetState extends State<Bunny> {
  Timer? _timer; // '현재 시간' 표시 위한 변수
  String _timeString = '';
  String _timeStringWeekday = '';
  String _timeStringDay = '';
  String _timeStringMonth = '';
  double percentage = 0; // 타이머 위젯
  Duration elapsedTime = Duration.zero; // 경과된 시간
  Duration remainingTime = Duration(hours: 9); // 남은 시간 (오후 6시까지)
  double hourlyWage = 9860; //시간당 급여
  // double _sliderValue = 0.0;
  double _weekdaySliderValue = 0.0;
  double _monthSliderValue = 0.0;
  double _yearSliderValue = 0.0;
  int _daysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  } // 해당 월의 일수 반환

  String _weekdayLabelFormatter(double value) { //라벨값을 위해 추가
    const weekdays = ['월요일', '화요일', '수요일', '목요일', '금요일'];
    return weekdays[value.toInt()];
  }

  String _dateLabelFormatter(double value) {
    return '${value.toInt() + 1}일';
  }

  String _monthLabelFormatter(double value) {
    const months = [
      '1월',
      '2월',
      '3월',
      '4월',
      '5월',
      '6월',
      '7월',
      '8월',
      '9월',
      '10월',
      '11월',
      '12월'
    ];
    return months[value.toInt()];
  }

  @override
  void initState() {
    // 현재 시간을 가져와 문자열로 변환
    super.initState();

    _timeString = _formatDateTime(DateTime.now());
    _timeStringWeekday = _formatWeekday(DateTime.now());
    _timeStringDay = _formatDay(DateTime.now());
    _timeStringMonth = _formatMonth(DateTime.now());
    // _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime()); // 1초마다 _getTime() 호출하여 업데이트
    _timer = Timer.periodic(Duration(days: 1), (Timer t) => _getTime());
    _updateTime();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());

    _weekdaySliderValue = _getWeekdayInitialSliderValue();
    _monthSliderValue = _getMonthInitialSliderValue();
    _yearSliderValue = _getYearInitialSliderValue();
    // 1초마다 percentage를 1씩 증가시키는 타이머
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (percentage <= 100) {
          percentage += 100 / 3600;
        } else {
          timer.cancel();
        }
      });
    });
  }

  double _getWeekdayInitialSliderValue() {
    int weekdayNumber = DateTime.now().weekday;
    // 월요일(1)부터 금요일(5)까지의 값만 허용
    if (weekdayNumber >= 1 && weekdayNumber <= 5) {
      return weekdayNumber.toDouble() - 1; // 요일에 따라 0부터 4까지 반환
    }
    return 0.0; // 주말일 경우 초기값을 0으로 설정
  }

  double _getMonthInitialSliderValue() {
    DateTime now = DateTime.now();
    return (now.day - 1).toDouble().clamp(0.0, 30.0);
  }

  double _getYearInitialSliderValue() {
    DateTime now = DateTime.now();
    return now.month.toDouble();
  }

  @override
  void dispose() {
    // 타이머 취소하여 리소스 정리
    _timer?.cancel();
    super.dispose();
  }

  void _updateTime() {
    final DateTime now =
        DateTime.now().toUtc().add(Duration(hours: 9)); //힌국시간으로 변환
    final DateTime startTime =
        DateTime(now.year, now.month, now.day, 9); //시작 9시
    final DateTime endTime =
        DateTime(now.year, now.month, now.day, 18); //종료 18시

    if (now.isBefore(startTime)) {
      elapsedTime = Duration.zero;
      remainingTime = endTime.difference(startTime);
      percentage = 0;
    } else if (now.isAfter(endTime)) {
      elapsedTime = endTime.difference(startTime);
      remainingTime = Duration.zero;
      percentage = 100;
    } else {
      elapsedTime = now.difference(startTime);
      remainingTime = endTime.difference(now);
      percentage =
          (elapsedTime.inSeconds / endTime.difference(startTime).inSeconds) *
              100;
    }

    setState(() {
      _timeString = DateFormat('yyyy. MM. dd.').format(now);
      _timeStringWeekday = DateFormat('EEEE', 'ko_KR').format(now);
    });
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(
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
                    margin: EdgeInsets.fromLTRB(23.5, 0, 10.6, 2),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start),
                  ),
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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
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
                                  // margin: EdgeInsets.fromLTRB(4.2, 0, 0, 13),
                                  child: SizedBox(
                                    width: 213,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // height: 30,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 20, 20, 0),
                                          child: SizedBox(
                                            // width: 145.8,
                                            child: DefaultTextStyle(
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20,
                                                  color: Color(0xFF000000),
                                                ),
                                                child: Text('버니')),
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
                                            margin: EdgeInsets.fromLTRB(
                                                0, 10, 0, 10),
                                            child: Text(
                                              '아끼',
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
                                Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFDDDDDD),
                                  ),
                                  child: Container(
                                    width: 360,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 65,
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
                    margin: EdgeInsets.fromLTRB(32, 10, 32, 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 2.4, 1),
                            child: DefaultTextStyle(
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Color(0xFF262626),
                              ),
                              child: Text('오늘의 버니'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 3, 0, 0),
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xFFB7B7B7),
                                ),
                                child: Text(_timeString + _timeStringWeekday
                                    // 날짜 부분: 실시간 값 반영되도록 변경함
                                    // '2024. 05. 10. 금 ',
                                    )),
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
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 24,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(45, 13, 13, 0),
                          child: CustomPaint(
                            size: Size(250, 250),
                            painter: PieChart(
                                percentage: percentage.toInt(),
                                textScaleFactor: 1.0,
                                textColor: Colors.blueGrey),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(12, 110, 13, 13),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 92),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: DefaultTextStyle(
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                            color: Color(0xFF000000),
                                          ),
                                          child: Text(
                                              // '${elapsedTime.inHours}시간 ${elapsedTime.inMinutes.remainder(60)}분 ${elapsedTime.inSeconds.remainder(60)}초',
                                              '${elapsedTime.inHours}시간 ${elapsedTime.inMinutes.remainder(60)}분')),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                                      child: DefaultTextStyle(
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(0xFF949494),
                                          ),
                                          child: Text(
                                            '퇴근까지 \n ${remainingTime.inHours}시간 ${remainingTime.inMinutes.remainder(60)}분 ${remainingTime.inSeconds.remainder(60)}초',
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                                child: Container(
                                  width: 160,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF98A2FF),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(0, 18, 0, 16),
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            '${NumberFormat('#,###').format((elapsedTime.inMinutes * hourlyWage / 60).toInt())}',
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
                                  padding:
                                      EdgeInsets.fromLTRB(24, 10, 25.4, 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 7, 20, 13),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    11, 0, 5.7, 6),
                                                child: DefaultTextStyle(
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      color: Color(0xFF737373),
                                                    ),
                                                    child: Text('초당')),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  //text: '${NumberFormat('#,###').format((elapsedTime.inSeconds < 60 ? 0 : hourlyWage * elapsedTime.inHours).toInt())}',
                                                  text:'${(hourlyWage / 3600).toStringAsFixed(2)}',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: Color(0xFF000000),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '원',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                      Container(
                                        width: 2,
                                        height: 40,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 12, 5, 0),
                                        color: Colors.white,
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              20, 7, 27.2, 13),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    9, 0, 3.2, 6),
                                                child: DefaultTextStyle(
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      color: Color(0xFF737373),
                                                    ),
                                                    child: Text('분당')),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  //text: '${NumberFormat('#,###').format((elapsedTime.inMinutes > 0 ? hourlyWage * elapsedTime.inMinutes / 60 : 0).toInt())}',
                                                  text:
                                                      '${NumberFormat('#,###').format((hourlyWage / 60).toInt())}',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: Color(0xFF000000),
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '원',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                      Container(
                                        width: 2,
                                        height: 40,
                                        margin:
                                            EdgeInsets.fromLTRB(4, 12, 4, 0),
                                        color: Colors.white,
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 7, 0, 13),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    17, 0, 6.7, 6),
                                                child: DefaultTextStyle(
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 13,
                                                    color: Color(0xFF737373),
                                                  ),
                                                  child: Text('시간당'),
                                                ),
                                              ),
                                              Center(
                                                  child: Container(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: RichText(
                                                  text: TextSpan(
                                                    //text:'${NumberFormat('#,###').format((elapsedTime.inHours > 0 ? hourlyWage * elapsedTime.inHours : hourlyWage).toInt())}',
                                                    text:
                                                        '${NumberFormat('#,###').format(hourlyWage.toInt())}',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                      color: Color(0xFF000000),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '원',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto Condensed',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13,
                                                          height: 1.3,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ))
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
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF262626),
                                ),
                                child: Text(
                                  '이 주의 버니',
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 3, 0, 0),
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xFFB7B7B7),
                                ),
                                child: Text(
                                  _timeStringWeekday,
                                )),
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
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 24,
                          spreadRadius: 3,
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
                          GradientSlider(
                            initialValue: _weekdaySliderValue,
                            minValue: 0,
                            maxValue: 4, // 주중 슬라이더의 최대값을 4로 설정
                            divisions: 4,
                            onChanged: (value) {
                              setState(() {
                                _weekdaySliderValue = value;
                              });
                            },
                            labelFormatter: _weekdayLabelFormatter,
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
                                    // text: '540,387',
                                    text:
                                        '${NumberFormat('#,###').format((((_weekdaySliderValue + 1) * (hourlyWage * 9).toInt())))}',

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
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF262626),
                                ),
                                child: Text('이 달의 버니')),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 3, 0, 0),
                            child: DefaultTextStyle(
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Color(0xFFB7B7B7),
                              ),
                              child: Text(_timeStringDay + '일'
                                  // '5월',
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
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 24,
                          spreadRadius: 3,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 1, 6.5, 0),
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
                                GradientSlider(
                                  initialValue: _monthSliderValue,
                                  minValue: 0,
                                  maxValue: 30,
                                  divisions: 30,
                                  onChanged: (value) {
                                    setState(() {
                                      _monthSliderValue = value;
                                    });
                                  },
                                  labelFormatter: _dateLabelFormatter,
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
                                          text:
                                              '${NumberFormat('#,###').format(((_monthSliderValue + 1) * (hourlyWage * 9).toInt()))}',
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
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Color(0xFF000000),
                                ),
                                child: Text('올해의 버니')),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2, 3, 0, 0),
                            child: DefaultTextStyle(
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xFFB7B7B7),
                                ),
                                child: Text(_timeStringMonth + '월')),
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
                          color: Color.fromRGBO(0, 0, 0, 0.07),
                          offset: Offset(0, 0),
                          blurRadius: 24,
                          spreadRadius: 3,
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
                          GradientSlider(
                            initialValue: _yearSliderValue,
                            minValue: 0,
                            maxValue: 11,
                            divisions: 11,
                            onChanged: (value) {
                              setState(() {
                                _yearSliderValue = value;
                              });
                            },
                            labelFormatter: _monthLabelFormatter,
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
                                    text:
                                        '${NumberFormat('#,###').format(((_yearSliderValue + 1) * (hourlyWage * 9) * _daysInMonth(DateTime.now().year, _yearSliderValue.toInt() + 1)))}',
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
        )));
  }
}