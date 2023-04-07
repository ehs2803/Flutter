someFun({required int arg1}){
  print('someFun().. arg1 : $arg1');
}
// 명명된 매개변수에서 required 예약어는 반드시 값을 전달받도록 강제.
main(){
  //someFun(); // error
  someFun(arg1: 10);
}
/*
값이 꼭 필요한 매개변수라면 일반 매개변수로 선언하면 된다?
명명된 필수 매개변수는 함수를 호출하는 곳에서 이름을 명시해서 값을 전달하므로
코드를 읽기 쉬워진다.
매개변수를 여럿일 때 순서를 맞추지 않아도 된다는 이점도 있다.
 */