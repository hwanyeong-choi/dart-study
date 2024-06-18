
// 형변환 type casting
void main(List<String> argument) {

  List<String> blackPink = ['로제', '지수', '리사', '제니'];

  // List -> Map
  print(blackPink);
  print(blackPink.asMap());

  // List -> Set
  print(blackPink.toSet());


  Map blackPinkMap = blackPink.asMap();

  // Iterable
  print(blackPinkMap.keys.toList());
  print(blackPinkMap.values.toList());

  // list ->set
  Set blackPinkSet = Set.from(blackPink);
  print(blackPinkSet);

}