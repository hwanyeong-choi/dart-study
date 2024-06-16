

void main(List<String> argument) {

  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
  print(tf.superCalculate());

}

// method - function (class 내부에 있는 함수)
class TimesTwo {
  final int number;

  TimesTwo(this.number);

  // method
  int calculate() {
    return number * 2;
  }

}

// override - 덮어쓰다 (우선시하다)
class TimesFour extends TimesTwo {
  TimesFour(int number): super(number);

  // override
  @override
  int calculate() {
    // TODO: implement calculate
    return super.number * 4;
  }

  // super calculate 활용
  int superCalculate() {
    // TODO: implement calculate
    return super.calculate() * 4;
  }

}
