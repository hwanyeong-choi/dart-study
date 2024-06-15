
// Operators
void main(List<String> argument) {

  int number = 2;
  print(number);
  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);

  print('-----------');
  print(number % 2);
  print(number % 3);

  print('-----------');
  print(number++);


  print('------------');

  double doubleNumber = 4.0;
  print(doubleNumber += 1);
  print(doubleNumber -= 1);
  print(doubleNumber /= 2);
  print(doubleNumber %= 2);

  // ?? 연산자 만약 doubleNumber값이
  // null 이라면 3.0값을 대입하라는 연산자
  print('--------------');
  print(doubleNumber ??= 3.0);

  // 비교 연산자 <, > >=, <=, ==, !=
  int number1 = 1;
  int number2 = 2;

  print(number1 > number2);
  print(number1 < number2);
  print(number1 >= number2);
  print(number1 <= number2);
  print(number1 == number2);
  print(number1 != number2);

  // 타입 비교
  print(number1 is int);
  print(number2 is String);

  // 논리 연산자 && and, || or
  print(number1 > 0 && number2 < 10);
  print(number1 > 0 || number2 < 10);

}