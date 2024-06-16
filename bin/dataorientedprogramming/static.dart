

void main(List<String> argument) {
  
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');

  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.building = '타워브릿지';

  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();
  
}

class Employee {
  // static은 instance에 귀속되지 않고 class에 귀속된다.

  // 알바생이 일하고 있는 건물
  // static field
  static String? building;

  //  알바생 이름
  final String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  // static method
  static void printBuilding() {
    print('저희는 $building 건물에서 근무중입니다.');
  }

}
