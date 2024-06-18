

// list
void main(List<String> argument) {
 List<String> blackPink = ['제니', '지수', '리사', '제니'];

 // map function
 List<String> newBlackPink = blackPink.map((member) => '블랙핑크: $member').toList();
 print(newBlackPink);
 
 // map은 새로운 list 객체를 반환하기 때문에 서로 다른 리스트 객체임
 print(blackPink == newBlackPink);

 String number = '13579';
 var parsed = number.split('').map((x) => '$x.jpg').toList();
 print(parsed);

}