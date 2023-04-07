/*
옵셔널 위치 매개변수(optional positional parameter)도 명명된 매개변수처럼 값은 선택이므로 전달받지 않을 수 있다.

그러나 값을 전달할 때 이름 대신 매개변수가 선언된 순서에 맞게 호출해야 한다.

즉, 옵셔널 위치 매개변수로 선언된 함수는 데이터 전달은 자유지만 순서는 맞춰서 호출해야 한다.

 **선언 규칙**
 1. 매개변수들을 대괄호로 묶는다.
 2. 함수의 마지막 매개변수에만 사용 가능.
 3. 매개변수에 기본 인자를 설정할 수 있음.

 **호출 규칙**
 1. 매개변수 이름 생략
 2. 매개변수가 선언된 순서에 따라 값이 할당.
 */

void some(int arg1, [String arg2='hello', bool arg3=false]){}

main(){
  //some(); // error
  some(10);
  some(10, 'world', true);
  //some(10, true, 'world'); // error
  some(10, 'world');
  //some(10, true); // error
}

