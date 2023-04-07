void some2(var a){
  a=20;
  a='world';
  a=true;
  a=null;
}

void some3(a){ // 타입 생략가능. var과 같음 -> dynamic 타입이 됨.
  a=20;
  a='world';
  a=true;
  a=null;
}
main(){
  //some2(); // error
  some2(10);
  some2('hello');

  //some3(); // error
  some3(10);
}
// var의 경우 대입한 값에 따라 컴파일러가 타입을 유추. 함수의 매개변수에 값이 대입되는 시점은 이함수를 호출할때 이므로
// 컴파일 시점에는 타입을 유추할 수 없음. 따라서 함수의 매개변수를 var로 선언하면 dynamic 타입이 됨.
