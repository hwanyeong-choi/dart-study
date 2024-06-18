
// 실전 사용 예시
void main(List<String> argument) {
  List<Map<String,String>> peoples = [
    {
      'name': '로제',
      'group': '블랙핑크'
    },
    {
      'name': '지수',
      'group': '블랙핑크'
    },
    {
      'name': 'RM',
      'group': 'BTS'
    },
    {
      'name': '뷔',
      'group': 'BTS'
    },
  ];

  print(peoples);

  List<Person> personList = peoples
      .map((people) => Person(name: people['name']!, group: people['group']!))
      .toList();

  print(personList);

  for(Person person in personList) {
    print(person.name);
    print(person.group);
  }

  var bts = personList.where((person) => person.group == 'BTS').toList();
  var blackPink = personList.where((person) => person.group == '블랙핑크').toList();

  print(bts);
  print(blackPink);

  // 체이닝 가능
  var result = peoples
      .map((people) => Person(name: people['name']!, group: people['group']!))
      .where((person) => person.group == 'BTS')
      .fold<int>(0, (prev, next) => prev + next.name.length);

  print(result);

}

class Person {
  final String name;
  final String group;
  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name: $name, group: $group)';
  }
}