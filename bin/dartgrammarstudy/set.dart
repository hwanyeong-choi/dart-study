
// Set
void main(List<String> argument) {

  final Set<String> names = {
    'Red Velvet',
    'Flutter',
    'Black Pink'
  };

  print(names);

  // add
  names.add('Jenny');

  // remove
  names.remove('Jenny');

  // Contains
  print(names.contains('Flutter'));

}