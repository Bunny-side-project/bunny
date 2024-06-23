// start3_working 페이지에서 입력되는 데이터를 받는 공유객체 클래스

class WorkPerformance {
  int id = 0; // 식별자 필요할 경우 추가, 현재 0으로 하드코딩
  num monthlyWage = 0; // 사용자가 기준 = 월급 으로 설정한 경우만 고려하여 프로토타입 개발 중
  num hourlyWage = 9860; // 시급 환산
  num startTime = 0; // 출근 시간
  num endTime = 0; // 퇴근 시간

  WorkPerformance(
      this.id, this.monthlyWage, this.hourlyWage, this.startTime, this.endTime);

  WorkPerformance.fromJson(Map<String, dynamic> performanceMap) {
    id = performanceMap['id'] ?? 0;
    monthlyWage = performanceMap['monthlyWage'] ?? 0;
    hourlyWage = performanceMap['hourlyWage'] ?? 0;
    startTime = performanceMap['startTime'] ?? 0;
    endTime = performanceMap['endTime'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'monthlyWage': monthlyWage,
      'hourlyWage': hourlyWage,
      'startTime': startTime,
      'endTime': endTime,
    };
  }

  num get hours => endTime - startTime;
}
