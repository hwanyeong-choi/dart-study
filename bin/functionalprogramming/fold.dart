
// fold
void main(List<String> argument) {

  List<int> numbers = [1, 3, 5, 7 ,9];

  var sum = numbers.fold<int>(0, (prev, next) => prev + next);
  print(sum);

  List<String> words = [
    '안녕하세요. ',
    '저는 ',
    '지수 입니다.'
  ];

  var sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);



  var count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);

}