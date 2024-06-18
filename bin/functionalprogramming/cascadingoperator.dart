

void main(List<String> argument) {
  List<int> even = [
    2, 4, 6, 8
  ];

  List<int> odd = [
    1, 3, 5, 7
  ];

  print([even, odd]);


  // cascading operator
  print([...even, ...odd]);

  /// cascading operator을 사용하면 새로운 객체로 풀어진다
  print(even == [...even]);



}