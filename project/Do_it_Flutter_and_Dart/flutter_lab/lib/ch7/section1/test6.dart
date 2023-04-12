class User{
  String name;
  int age;
  User(this.name, this.age);
}

class SuperClass{
  String name;
  int age;
  SuperClass(this.name, this.age);
}

class SubClass extends SuperClass{
  //SubClass(super.name, super.age); // 아래 코드를 대체 가능.
  SubClass(String name, int age) : super(name, age) {} // 부모 클래스 멤버 초기화
}

main(){
  var obj = SubClass('lee', 10);
  print('${obj.name}, ${obj.age}'); // lee, 10
}