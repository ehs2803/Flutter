// 클래스는 변수와 함수를 멤버로 선언
class User{
  String name='lee';
  int age=10;

  void sayHello(){
    print('Hello $name, age: $age');
  }
}

class MyClass{
  String data1 = 'hello';
  static String data2 = 'hello';

  myFun1(){
    print(data1);
    print(data2);
    print('myFun1 call....');
  }

  static myFun2(){
    //print(data1);//error
    print(data2);
    print('myFun2 call....');
  }
}
main(){
  // 객체 생성 시 new 연산자를 이용해도 되고 생략도 가능... 클래스의 생성자를 호출하면 객체 생성 가능.
  User user1 = new User();
  User user2 = User();

  user1.sayHello();
  user1.name='kim';
  user1.age=20;
  user1.sayHello();

  MyClass.data2='Hello';
  MyClass obj = MyClass();
  obj.data1 = 'world';
  //obj.data2='Hello'; // error... 클래스 멤버는 객체로 접근 불가.
}
/*
클래스에 선언한 변수나 함수를 멤버.
객체 멤버와 클래스 멤버(혹은 정적 멤버)로 구분.

객체 멤버는 생성된 객체를 이용해서 접근.
 */