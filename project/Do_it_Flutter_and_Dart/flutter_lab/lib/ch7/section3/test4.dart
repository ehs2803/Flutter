class SomeClass{
  int someData=10;
}

class MyClass with SomeClass{
  void sayHello(){
    print('someData : $someData');
  }
}
/*
클래스도 with로 이용가능.

보통은 클래스는 extends를 사용해 상속받아 이용하지만 믹스인처럼 with로도 이용가능.
즉, 어떤 클래스에서 다른 클래스나 믹스인에 선언된 멤버를 사용할 때 with를 사용가능.

클래스는 객체를 생성할 수 있지만, 믹스인은 객체 생성이 불가능.
결국 믹스인은 독립적으로 이용할 수 없으며 다른 클래스에서 공통으로 사용할 변수나 함수를 믹스인에 담아 두고 필요한 클래스에서 with로 연결해서 사용.
 */

class User{
  //User(){} // error... with 예약어로 사용할 클래스에서는 생성자 선언 불가.
}

class MyClass1 with User{

}