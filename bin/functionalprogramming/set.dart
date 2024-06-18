
void main(List<String> argument) {
  Set blackPinkSet = {
    '로제',
    '지수',
    '제니',
    '리사'
  };

  var newSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();
  print(newSet);
}