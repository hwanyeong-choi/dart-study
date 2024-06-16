
// class, instance
void main(List<String> argument) {
  // 인스턴스 생성
  Idol blackPink = Idol();

  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();

  // 기본 생성자
  ConstructIdol constructIdol = ConstructIdol(
      'BTS',
      ['RM', '진', '슈가', '제이홉', '지민', '뷔', '정국']
  );

  print(constructIdol.name);
  print(constructIdol.members);
  constructIdol.sayHello();
  constructIdol.introduce();

  // Named 생성자
  ConstructIdol namedConstructIdol = ConstructIdol.fromList([
    ['초롱', '보미', '은지', '남주', '하영'],
    '에이핑크'
  ]);

  print(namedConstructIdol.name);
  print(namedConstructIdol.members);
  namedConstructIdol.sayHello();
  namedConstructIdol.introduce();
  
  // immutable 프로그래밍
  ImmutableConstructIdol immutableConstructIdol1 = const ImmutableConstructIdol('블랙핑크', ['지수', '제니', '리사', '로제']);
  ImmutableConstructIdol immutableConstructIdol2 = const ImmutableConstructIdol('블랙핑크', ['지수', '제니', '리사', '로제']);
  // immutableConstructIdol.name = '예리'; <-  불변이기 때문에 name 필드값을 변경할 수 없음

  /*
    일반적으로 객체를 생성하면 아무리 필드값들이 동일해도 객체가 생성되는 메모리 주소가 다르기
    때문에 서로 객체를 비교하면 서로 다른 객체라고 판단됩니다. 하지만 const로 객체를 생성하면
    서로 같다고 판단됩니다.

    1.  Claude의 불변 객체의 동일한 인자값으로 생성된 객체가 왜 같은 객체로 취급되는지에 대한 답변 입니다.

    2.  Dart에서 const 생성자를 사용하여 불변 객체를 생성할 때, 동일한 인자로 생성된 객체들은 같은 객체로 취급됩니다. 이러한 동작의 이유는 다음과 같습니다:

    3.  컴파일 타임 상수: const 생성자로 생성된 객체는 컴파일 타임에 생성되는 상수입니다. 즉, 런타임이 아닌 컴파일 시점에 객체가 만들어집니다.
        캐싱 및 재사용: Dart 컴파일러는 동일한 const 생성자 호출을 최적화하여 같은 객체를 재사용합니다. 이는 메모리 사용을 줄이고 성능을 향상시킵니다.
        값 기반 동등성: const 객체는 그 내용(값)을 기반으로 동등성이 결정됩니다. 모든 필드가 같다면, 그 객체들은 동일한 것으로 간주됩니다.
        불변성 보장: const 객체는 불변이므로, 한 번 생성된 후에는 변경될 수 없습니다. 이는 객체의 동등성을 보장하는 데 도움이 됩니다.
        해시코드 일관성: 같은 내용의 const 객체들은 항상 같은 해시코드를 가집니다. 이는 Set이나 Map의 키로 사용될 때 일관된 동작을 보장합니다.

    4.  따라서, 여러분의 예제에서 immutableConstructIdol1와 immutableConstructIdol2는 같은 인자로 const 생성자를 호출하여 생성되었기 때문에,
        Dart는 이들을 같은 객체로 취급합니다. 이는 메모리 효율성과 성능 최적화를 위한 Dart의 설계 결정입니다.
        이 동작을 확인하려면 다음과 같은 코드를 사용할 수 있습니다.
   */
  print(identical(immutableConstructIdol1, immutableConstructIdol2));



}


// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];


  void sayHello() {
    print('안녕하세요 블랙핑크 입니다.');
  }
  
  void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }

}
// 생성자가 있는 Idol class
class ConstructIdol {
  String name;
  List<String> members;

  // 기본 생성자
  ConstructIdol(this.name, this.members);

  // named 생성자
  ConstructIdol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members.map((member) => member).join(", ")}가 있습니다.');
  }

}

// immutable 프로그래밍
class ImmutableConstructIdol {
  final String name;
  final List<String> members;

  // 기본 생성자
  const ImmutableConstructIdol(this.name, this.members);

  // named 생성자
  ImmutableConstructIdol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members.map((member) => member).join(", ")}가 있습니다.');
  }

}
