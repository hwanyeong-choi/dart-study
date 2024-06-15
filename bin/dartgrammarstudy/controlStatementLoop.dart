
// Loop
void main(List<String> argument) {

  // for
  for (int i = 0;  i < 10; i++) {
    print('i값은: ${i}');
  }

  int total = 0;
  List<int> number = [1, 2, 3, 4, 5, 6];

  for (int i = 0; i < number.length; i++) {
    total += number[i];
  }

  print(total);

  // for in

  total = 0;

  for (int number in number) {
    total += number;
  }

  print(total);

  total = 0;

  while (total < 10) {
    total += 1;
  }

  print(total);

  // do while
  total = 0;

  do {

    total += 1;

  } while(total < 10);

  // while + break
  total = 0;
  while (total < 10) {
    total += 1;
    if (total == 5) {
      break;
    }
  }

  print(total);

  // for + continue
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

}