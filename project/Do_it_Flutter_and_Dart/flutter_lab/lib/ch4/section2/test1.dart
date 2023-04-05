//상수 변수는 초깃값을 대입한 후에 값을 바꿀 수 없음.
// 다트에서는 상수가되는 시점에 따라 컴파일 타임과 런타임 상수 변수로 구분.

// 컴파일 상수 변수 - const
// const 변수는 컴파일 단계에서 상수가 됨. 변수 선언 시 초깃값을 대입해야함. 그후 변경 X
// 컴파일 상수 변수는 const 예약어로 선언.
// const 변수는 톱 레벨, 함수 내에 지역 변수, 클래스 선언시에는 static으로만 선언 가능
/*
const String data1; // error

class User{
  static const String data2; // error

  void some(){
    const String data3; // error
  }
}
*/