/*
추상 클래스는 추상 함수만 제공하여 상속받는 클래스에서 반드시 재정의해서 사용하도록 강제하는 방법.

추상함수는 실행문이 작성된 본문이 없는 함수를 의미.


 */
abstract class User{
  void some(); // 본문을 생략한 추상 함수를 선언할 때는 이 함수가 속한 클래스가 abstract 예약어를 붙여 추상 클래스로 선언해야함.
}
// 추상 함수는 abstract를 붙인 추상 클래스에서만 선언 가능.
// 추상 클래스는 객체 생성 불가.

class Customer extends User{
  @override
  void some(){}
}