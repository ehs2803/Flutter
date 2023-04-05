// 런타임 상수 변수 - final
// 톱레벨, 클래스 혹은 함수 내부에 선언 가능.
// 초깃값을 대입하는 시점이 꼭 선언문이 아닐 수도 있음.

//final int no1; // 초깃값이나 이후에 값을 대입하지 않아서 오류

class MyClass{
  final int no2;
  MyClass(this.no2);

  void some(){
    final no3;
    no3=10;
    //no3=20; // error... 값을 바꿀 수 없어서 오류
  }
}