mixin MyMixin{
  int data1 = 10;
  static int data2 = 20;

  void myFun1(){
    print('MyMixin... myFun()...');
  }

  static void myFun2() { }
}
/*
믹스인은 mixin이라는 예약어로 선언.

믹스인에는 변수와 함수를 선언 가능하지만, 클래스가 아니므로 생성자는 선언 못함.

생성자를 가질 수 없으므로 객체를 생성할 수 없음.

다트를 비롯해 대부분의 객체지향 언어에서는 다중 상속을 지원하지 않는다. 즉, 하나의 클래스만 상속가능.
그런데 여러 클래스에 선언된 멤버를 상속한 것처럼 이용하고 싶을 때가 있음.
이때 믹스인 사용.

믹스인을 사용하면 클래스를 상속하지 않고도 믹스인에 선언한 멤버를 다른 클래스에서 사용가능.
이때 with 예약어 사용.
 */

class MyClass with MyMixin{
  void sayHello(){
    print('data : $data1');
    myFun1();
    MyMixin.myFun2();
  }
}