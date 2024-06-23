import 'package:shared_preferences/shared_preferences.dart';
import 'work_performance.dart';
import 'dart:convert';

class SPHelper {
  // static late SharedPreferences prefs;

  Future init() async {
    // prefs = await SharedPreferences.getInstance();
  }

  Future writeWorkPerformance(WorkPerformance workPerformance) async {
    // prefs.setString(
    //     //workPerformance.monthlyWage.toString(), // 설정할 값에는 오직 String만 설정 가능하므로 객체를 문자열화 해야 함
    //     //workPerformance.hourlyWage.toString(),
    //     //workPerformance.startTime.toString(),
    //     //workPerformance.endTime.toString(),
    //     //workPerformance.hours.toString(),
    //     workPerformance.id.toString(),
    //     json.encode(workPerformance.toJson())); // convert.incode() 통해 문자열화 함
    final prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(workPerformance.toJson());
    prefs.setString('workPerformance', jsonString);
  }

  Future<WorkPerformance?> readWorkPerformance() async {
    final prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('workPerformance');
    if (jsonString != null) {
      Map<String, dynamic> performanceMap = jsonDecode(jsonString);
      return WorkPerformance.fromJson(performanceMap);
    }
    return null;
  }




  // List<WorkPerformance> getWorkPerformances() {
  //   List<WorkPerformance> performances = [];
  //   Set<String> keys = prefs.getKeys();
  //   keys.forEach((String key) {
  //     WorkPerformance performance =
  //         WorkPerformance.fromJson(json.decode(prefs.getString(key) ?? ''));
  //     performances.add(performance);
  //   });
  //   return performances;
  // }
}
