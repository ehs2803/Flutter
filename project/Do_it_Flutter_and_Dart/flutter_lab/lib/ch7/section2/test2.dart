/*
인터페이스란 부모의 특징을 도구로 사용해 새로운 특징을 만들어 사용하는 객체지향 프로그래밍 방법.

다트에서는 대부분의 객체지향 언어에서 지원하는 interface 예약어를 지원하지 않는다.

다트에서는 implements만 지원하고 interface는 지원하지 않는다.

즉, 인터페이스를 명시적으로 선언하지 않아도 다른 클래스를 도구 삼아 구현하는 방법을 제공.
이를 암시적 인터페이스(implicit interface).

암시적 인터페이스란 클래스 자체가 인터페이스라는 의미. 즉, 클래스를 implements로 선언하면 다른 클래스를 인터페이스로서 활용할 수 있다는 의미.
 */

class User{
  int no;
  String name;

  User(this.no, this.name);
  String greet(String who)=>'Hello, $who. I am $name. no is $no';
}

// User 클래스는 암시적 인터페이스가 되고, MyClass는 User를 새로 구현한 클래스.
class MyClass implements User{ // User 클래스를 본떠 새로운 클래스를 구현 가능.
  int no=10;
  String name='lee';
  @override // User의 모든 멤버를 재정의해야함.
  String greet(String who){
    return 'hello';
  }
}

main(){
  // 구현 클래스의 객체는 인터페이스 타입으로 선언 가능. 
  User user = MyClass();
  print('${user.greet('person')}');
}
/*
class MyClass implements User, MyInterface{
}
하나의 클래스에 여러 인터페이스를 지정해서 선언가능.
 */