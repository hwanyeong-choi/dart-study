

void main(List<String> argument) {
  _PrivateIdol blackPink = _PrivateIdol();

}


// class private
/*
  _ 를 class, field앞에 붙여주면 private 접근 제한자가 설정됩니다.
 */
class _PrivateIdol {

  // private name field

  String _name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello() {
    print('안녕하세요 블랙핑크 입니다.');
  }

  void introduce() {
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }

  // Getter
  String get firstMember {
    return members[0];
  }

  // Setter
  // 무조건 파라미터는 1개만 받을 수 있습니다.
  set firstMember(String name) {
    members[0] = name;
  }

}
