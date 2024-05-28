// start3_working 페이지에서 입력되는 데이터를 받는 공유객체 클래스

class WorkPerformance {
  // int id = 0; // 식별자 필요할 경우 추가
  double monthlyWage = 0.0; // 사용자가 기준 = 월급 으로 설정한 경우만 고려하여 프로토타입 개발 중
  double hourlyWage = 9860; // 시급 환산
  num startTime = 9.0; // 출근 시간
  num endTime = 18.0; // 퇴근 시간
  num hours = 9.0; // endTime - startTime 이 현재 인식안됨, 임시로 지정

  WorkPerformance(this.hourlyWage, this.startTime, this.endTime, this.hours);

  WorkPerformance.fromJson(Map<String, dynamic> performanceMap) {
    // id = performanceMap['id'] ?? 0;
    hourlyWage = performanceMap['hourlyWage'] ?? 0;
    startTime = performanceMap['startTime'] ?? 0;
    endTime = performanceMap['endTime'] ?? 0;
    hours = performanceMap['hours'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'hourlyWage': hourlyWage, 
      'startTime': startTime,
      'endTime': endTime,
      'hours': hours
    };
  }
}
