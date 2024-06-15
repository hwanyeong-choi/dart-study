
// Variable 변수
void main(List<String> argument) {

  // var타입은 변수이지만 값이 대입될때 변수타입이 결정된다.
  var name = 'Flutter Dart';

  var name2 = '레드벨벳';

  print(name);

  print(name2);

  // 사칙연산 +-*/%

  // integer
  int number1 = 10;

  int number2 = 15;

  // double
  double numberD1 = 2.5;

  // Boolean
  bool isTrue = true;
  isTrue = false;

  // String
  String redvelvet= '레드벨벳';

  // String 보간법
  print('${name} ${redvelvet}');
  
  // Dynamic 어떤 값이던 들어올 수 있느 타입
  // var는 한번 데이터 타입이 결정된 이후에는 다른 데이터 타입을 허용하지 않지만
  // dynamic은 데이터 타입이 할당되었다해도 대입하는 값에 따라서 계속해서 타입이 변경됩니다.
  dynamic dynamicVariable = '다이나믹';
  dynamicVariable = 2;


  // nullAble - null이 될 수 있음.
  // non-nullable - null이 될 수 없음
  // null - 아무런 값도 있지 않다.
  String nonNullString = '레드벨벳 낫 널';
  // nonNullString = null; <- 오류

  String? nullAbleString = '블랙핑크';
  nullAbleString = null; //  <- null을 허용하기 때문에 오류 발생 X

  // non-nullable 타입에 변수에 null값을 대입할때는 강제로 추출하는 방식이 있습니다.
  // nullAbleString!; <- 강제 추출 단 null 오류발 생 여지가 있음으로 비추

  // fianl 상수 데이터 타입 생략 가능
  final String finalString = '블랙핑크';
  // finalString = '지수'; <- 변수 재할당 불가

  // const  상수 데이터 타입 생략 가능
  const constString = '제니';
  // constString = '리사'; <- 변수 재할당 불가

  // final과 const의 차이는  빌드시에 값이 결정되어있냐 아니냐의 차이입니다.
  final DateTime finalNow = DateTime.now();
  // const DateTime constNow = DateTime.now(); 컴파일시에 이미 값이 결정되어 있어야함

  // DateTime
  DateTime now = DateTime.now();
  print(now);


}