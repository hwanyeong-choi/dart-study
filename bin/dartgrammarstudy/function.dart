
// Function
void main(List<String> argument) {
  addNumbers(10, 20, 30);
  addNumbers(20, 30, 40);

  optionalParameterAddNumbers(20);

  namedParameterAddNumbers(x: 20, y: 90, z: 100);
  
  int result1 = returnAddNumbers(20, 10, 30);
  int result2 = returnAddNumbers(30, 40, 50);
  print(result1 + result2);


  namedPositionAddNumber(20, y: 30, z: 40);

  print(arrowAddNumbers(10, 10, 10));

}

// TODO 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument: 매개변수
// positional parameter: 순서가 중요한 파라미터

addNumbers(int x, int y, int z) {

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

/*
  optional parameter: 있어도 되고 없어도 되는 파라미터 옵셔널 파라미터는 y, z
  optional을 허용하기 위해서는 디폴트 값을 명시하거나 int? 같이 nullAble Variable로 설정하면 됩니다.
 */
optionalParameterAddNumbers(int x, [int y = 20, int z = 30]) {

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

}

// Named Parameter
namedParameterAddNumbers({
  required int x,
  required int y,
  required int z
}) {

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

}

// Named Optional Parameter
namedOptionalParameterAddNumbers({
  required int x,
  required int y,
  int z = 30
}) {

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

}

// named + position parameter
namedPositionAddNumber(int x, {
  required int y,
  required int z,
}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

}

// arrow Function
arrowAddNumbers(int x, int y, int z) => x + y + z;


// return Function
int returnAddNumbers(int x, int y, int z) {

  int sum = x + y + z;

  print('x : $x');
  print('y : $y');
  print('z : $z');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}



