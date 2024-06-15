
// List
void main(List<String> argument) {
  // List
  List<String> blackPink = ['제니', '지수', '로제', '리사'];
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  print(blackPink);
  print(numbers);

  // index
  print(blackPink[0]);
  print(numbers[1]);

  // length
  print(blackPink.length);
  print(numbers.length);
  
  // add
  blackPink.add('예리');
  print(blackPink);
  
  // remove
  blackPink.remove('예리');
  print(blackPink);
  
  // indexOf
  print(blackPink.indexOf('로제'));

}