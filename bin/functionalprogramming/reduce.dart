

// reduce
void main(List<String> argument) {

  List<int> number = [1, 3, 5, 7, 9];

  var total = number.reduce((prev, next) => prev + next);
  print(total);


  List<String> words = [
    '안녕하세요 ',
    '저는 ',
    '지수 입니다.'
  ];

  var sentence = words.reduce((prev, next) => prev + next);
  print(sentence);

}