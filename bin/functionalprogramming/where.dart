
// where <- java에 filter와 같음
void main(List<String> argument) {
  List<Map<String,String>> people = [
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

  print(people);

  // java에 filter와 같음
  final blackPink = people.where((x) => x['group'] == '블랙핑크');
  final bts = people.where((x) => x['group'] == 'BTS').toList();
  print(blackPink);
  print(bts);
  
}