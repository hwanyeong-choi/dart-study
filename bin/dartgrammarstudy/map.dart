
// Map
void main(List<String> argument) {

  // Key / Value
  Map<String, String> dictionary = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };

  print(dictionary);


  Map<String, bool> isHarryPotter = {
    'Harry Potter': true,
    'Ron Weasley': true,
    'Ironman': false
  };

  print(isHarryPotter);


  // addAll
  isHarryPotter.addAll({

    'Spiderman': false

  });
  
  // add
  isHarryPotter['Hulk'] = false;
  print(isHarryPotter);

  // index
  print(isHarryPotter['Ironman']);

  // modify
  isHarryPotter['Ironman'] = true;
  print(isHarryPotter['Ironman']);

  // remove
  isHarryPotter.remove('Harry Potter');

  // 전체 키값 조회
  print(isHarryPotter.keys);

  // 전체 벨류갑 ㅅ조회
  print(isHarryPotter.values);

}