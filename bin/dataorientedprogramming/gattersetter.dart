
// Getter, Setter
// 데이터를 가져올때 / 데이터를 설정할때
void main(List<String> argument) {

  Idol blackPink = Idol();
  print(blackPink.firstMember);

  blackPink.firstMember = '정국';
  print(blackPink.firstMember);

}

// Getter, Setter include Class
class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];


  void sayHello() {
    print('안녕하세요 블랙핑크 입니다.');
  }

  void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }

  // Getter
  String get firstMember {
    return this.members[0];
  }

  // Setter
  // 무조건 파라미터는 1개만 받을 수 있습니다.
  set firstMember(String name) {
    this.members[0] = name;
  }

}
