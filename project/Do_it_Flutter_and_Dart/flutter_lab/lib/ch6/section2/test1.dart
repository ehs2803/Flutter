class User{
  User(){} // 기본생성자
}
/*
생성자는 클래스에 선언되어 객체를 생성할 때 호출하는 함수.
모든 클래스는 생성자를 가지며 개발자가 만들지 않으면 컴파일러가 자동으로 클래스와 같은 이름으로 기본 생성자 생성.
 */

class User1{
  late String name;
  late int age;
  User(String name, int age){
    this.name=name;
    this.age=age;
  }
  sayHello(){
    print('name: $name, age: $age');
  }
}
/*
생성자는 보통 멤버를 초기화하는 용도로 사용. 즉, 객체를 생성할 때 매개변수로 전달받은 데이터를 클래스에 선언된 멤버에 대입.
 */

class User2{
  late String name;
  late int age;
  User2(this.name, this.age);
  sayHello(){
    print('name: $name, age: $age');
  }
}
/*
매개변수로 멤버를 초기화하는 생성자는 this 예약어를 이용하면 간단하게 작성할 수 있음.
 */