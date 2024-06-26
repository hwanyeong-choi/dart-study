

import 'dart:io';

void main(List<String> argument) {

  print('-------- Idol ----------');
  Idol apink = Idol(name: '에이핑크', membersCount: 5);
  apink.sayName();
  apink.sayMemberCount();

  print('-------- Boy Group ----------');
  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMemberCount();
  bts.sayMale();

  print('-------- Girl Group ----------');
  GirlGroup redVelvet = GirlGroup('Re Velvet', 5);
  redVelvet.sayName();
  redVelvet.sayMemberCount();
  redVelvet.sayMale();

  print('-------- Type Comparison ----------');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(apink is GirlGroup);

  print('-------- Type Comparison 2 ----------');
  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print('-------- Type Comparison 3 ----------');
  print(redVelvet is Idol);
  print(redVelvet is BoyGroup);
  print(redVelvet is GirlGroup);


}

/*
  상속 - ingeritance
  상속 받으면 부코 클래스의 모든 속성을
  자식 클래스가 부여받는다.
 */
class Idol {
  String name;
  int membersCount;

  Idol({
    required this.name,
    required this.membersCount
  });

  void sayName() {
    print('저는 ${name}입니다.');
  }

  void sayMemberCount() {
    print('${name}은 ${membersCount}명의 멤버가 있습니다.');
  }

}


// BoyGroup은 Idol 상속
class BoyGroup extends Idol {
  BoyGroup(String name, int membersCount): super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

// GirlGroup은 Idol 상속
class GirlGroup extends Idol {
  GirlGroup(String name, int membersCount): super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 여자 아이돌입니다.');
  }

}
