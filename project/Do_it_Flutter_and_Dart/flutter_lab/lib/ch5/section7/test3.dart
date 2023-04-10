/*
예외처리문은 대부분 언어에서 제공하는 런타임 오류를 제어하는 구문.
 */
some(){
  // 프로그램이 실행되다 특정 시점에 예외를 발생시키고 싶다면 throw문을 이용.
  throw Exception('my exception');
}

some1(){
  // Exception 클래스 이외에 다른 객체를 던져도 된다. 문자열을 던질 수 있음.
  throw "my exception1";
}

class User{}
some2(){
  throw User(); // 예외로 객체를 던질 수 있음.
}