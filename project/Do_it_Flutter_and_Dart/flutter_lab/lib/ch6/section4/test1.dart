/*
팩토리 생성자는 factory 예약어로 선언.

팩토리 생성자 역시 객체를 생성할 때 호출할 수 있지만, 생성자 호출만으로 객체가 생성되지는 않는다.
팩토리 생성자에서 적절한 객체를 반환해줘야 한다.

결국 팩토리 생성자는 클래스 외부에서는 생성자처럼 이용되지만, 실제로는 클래스 타입의 객체를 반환하는 함수.

팩토리 생성자는 반환 타입을 명시할 수 없으며 클래스 타입으로 고정. null을 반환해도 오류.

팩토리 생성자 자체로는 객체가 생성되지 않으며 적절한 객체를 준비해서 반환해 줘야 하낟.
따라서 팩토리 생성자가 선언된 클래스에는 객체를 생성하는 다른 생성자를 함께 선언하는 방법을 주로 사용.
 */
class MyClass{
  MyClass._instance();
  factory MyClass(){
    return MyClass._instance();
  }
}

main(){
  var obj = MyClass();
}
// 팩토리 생성자는 캐시 알고리즘이나 상속 관계에 따른 다형성을 구현할 때 유용할 수 있다.
// 예를 들어 어떤 클래스의 객체를 여러 개 생성하고 그 객체를 식별자로 구분해서 사용한다고 가정...
// 객체를 생성할 때 식별자에 해당하는 객체가 없으면 새로 생성하고, 있으면 기존의 객체를 그대로 반환가능.