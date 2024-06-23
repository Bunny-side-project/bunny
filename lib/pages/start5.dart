import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'start3.dart';
import 'bunny.dart';
import 'package:flutter_app/data/sp_helper.dart';
import 'package:flutter_app/data/work_performance.dart';


class start5 extends StatefulWidget { 
  @override
  _Start5state createState() => _Start5state();
}

class _Start5state extends State<start5> {
  WorkPerformance? _workPerformance;
  final SPHelper _spHelper = SPHelper();

  @override
  void initState() {
    super.initState();
    _loadWorkPerformance();
  }

  Future<void> _loadWorkPerformance() async {
    WorkPerformance? workPerformance = await _spHelper.readWorkPerformance();
    setState(() {
      _workPerformance = workPerformance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(24.5, 15, 11.6, 42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5.5, 0, 5.5, 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '홍길동 님이 벌고 계시는 급여입니다.',
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
              if (_workPerformance != null)
                Container(
                  margin: EdgeInsets.fromLTRB(0.5, 0, 13.4, 136),
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
                    padding: EdgeInsets.fromLTRB(25, 25, 25, 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 199.2,
                                  child: Text(
                                    '월에',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                //'320만 원',
                                '${_workPerformance!.monthlyWage} 원',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 206.4,
                                  child: Text(
                                    '주에',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${_workPerformance!.monthlyWage / 4} 원', // 주급 계산
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 206.4,
                                  child: Text(
                                    '일에',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${_workPerformance!.monthlyWage / 30} 원', // 일급 계산: 30일 기준
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 181.8,
                                  child: Text(
                                    '시간 당',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${_workPerformance!.hourlyWage} 원', // 시급 계산
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 201.6,
                                  child: Text(
                                    '분 당',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${_workPerformance!.hourlyWage / 60} 원', // 분당 버는 돈
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                child: SizedBox(
                                  width: 203.7,
                                  child: Text(
                                    '초 당',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${_workPerformance!.hourlyWage / 3600} 원', // 초당 버는 돈
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF98A2FF),
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
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10), // 이 부분 수정
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => new Bunny()), // bunny 페이지로 이동 // 에러 때문에 new 추가함
                    );
                  },
                  child: Container(
                    // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF98A2FF),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Container(
                      // padding: EdgeInsets.fromLTRB(1, 11, 0, 11),
                      padding: EdgeInsets.fromLTRB(90, 13, 0, 11),
                      child: Text(
                        '이대로 진행할게요',
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 40), // 이 부분 수정
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => start3()), // start4 페이지로 이동
                    );
                  },
                  child: Container(
                    //margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFCFCFCF),
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(90, 13, 0, 11),
                      child: Text(
                        '추가 수입이 있어요',
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
    );
  }
}
