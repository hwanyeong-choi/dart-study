

void main(List<String> argument) {

  BoyGroup bts = BoyGroup('BTS');
  GirlGroup redVelvet = GirlGroup('레드벨벳');

  /*
    Dart에서는 interface라는 예약어가 존재하지 않기 때문에
    interface용도로 사용하려고한 class로 instance를 생성할 수 있는 오류를 벌함 수 있습니다.
    따라서 interface로 사용할 class에는 abstract를 붙여서 하면 interface class로 객체화하는걸 방지할 수 있습니다.
   */
  // IdolInterface test = IdolInterface('블랙핑크'); <- abstract로 인스턴스화 방지 오류발생


  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print(redVelvet is IdolInterface);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);

}

// interface Dart는 다른 언어와 다르게 interface 예약어가 존재하지 안습니다.
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  void sayName() {}

}

// BoyGroup는 IdolInterface를 구현
class BoyGroup implements IdolInterface {

  String name;

  BoyGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }
  
}


class GirlGroup implements IdolInterface {

  String name;

  GirlGroup(this.name);

  void sayName() {
    print('제 이름은 $name입니다.');
  }

}
