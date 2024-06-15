

// TypeDef
void main(List<String>  argument) {

  Operation operation = add;

  int result = operation(10, 20, 30);
  print(result);

  operation = subtract;

  result = operation(10, 20, 30);
  print(result);

  result = calculate(30, 40, 50, add);

  print(result);

  result = calculate(40, 50, 60, subtract);

  print(result);

}

typedef Operation = int Function(int x, int y, int z);


// 더하기
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;


// 계산 가장 많이 사용하는 방법 함수를 매개변수로 받아서 해당 값을 결과값으로 넘기도록
int calculate(int x, int y, int z, Operation operation) => operation(x, y, z);