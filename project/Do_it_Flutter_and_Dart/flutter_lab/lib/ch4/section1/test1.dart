int? no=10; // int는 dart:core 라이브러리에서 제공하는 클래스.

main(){
  bool? data = no?.isEven;
  no=null;
  Object? obj = no; // 다트의 최상위 클래스 Object에 대입 가능.
}
// 다트 언어에서 모든 변수는 객체.
// 따라서 int 타입 변수는 객체이므로 null을 대입할 수 있음.
// int 클래스에 정의된 변수와 함수를 이용가능

/*
[dart:core library]
bool : true/false
double : 실수
int : 정수
---
num : 숫자(double과 int의 상위 클래스)
String : 문자열
---
[dart:typed_data]
ByteData : 바이트
 */