import 'package:shared_preferences/shared_preferences.dart';
import 'work_performance.dart';
import 'dart:convert';

class SPHelper {
  static late SharedPreferences prefs;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future writeWorkPerformance(WorkPerformance workPerformance) async {
    prefs.setString(
      workPerformance.monthlyWage.toString(), // 설정할 값에는 오직 String만 설정 가능하므로 객체를 문자열화 해야 함
      json.encode(workPerformance.toJson())); // convert.incode() 통해 문자열화 함
  }
}
