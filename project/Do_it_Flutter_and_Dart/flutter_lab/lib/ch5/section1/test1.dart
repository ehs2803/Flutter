void some1(){

}

void some2(){
  void some3(){

  }
  some3();
}

class MyClass{
  void some4(){

  }
  // error .. 다트에서는 오버로딩 제공 X -> 옵셔널 매개변수 기능 제공.
  // void some4(int a){
  //
  // }
}
// 다트에서 함수는 톱 레벨, 클래스 멤버, 다른 함수 내에 선언 가능.