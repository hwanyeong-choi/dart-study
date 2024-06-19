
// await
void main(List<String> argument) async {

  // Future - 미래
  // 미래 받아올 값

  Future<String> name = Future.value('블랙핑크 지수');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // 2개의 파라미터
  // delayed -  지연되다.
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
  // 2번 파라미터 -  지연 시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 2), (){
    print('Delay 끝');
  });

  await addNumber(1, 1);
  await addNumber(2, 2);

}


Future<void> addNumber(int number1, int number2) async {
  print('계산 시작 :$number1 + $number2');

  // 서버 시뮬레이션
  await Future.delayed(Duration(seconds: 2), (){
    print('계산 완료 : $number1 + $number2 = ${number1 + number2}');
  });

  print('함수 완료 : $number1 + $number2');

}