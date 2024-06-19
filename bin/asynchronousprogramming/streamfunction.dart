
// stream function

import 'dart:async';

void main(List<String> argument) {

  calculate(2).listen((val){
    print('calculate(1) : $val');
  });

}

Stream<int> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield i * number;
  }
}