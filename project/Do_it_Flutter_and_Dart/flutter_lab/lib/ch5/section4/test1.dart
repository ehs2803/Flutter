void some(){}
Function data2 = some;
// 다트에서는 모든 데이터가 객체이므로 함수도 객체.
// 함수를 대입할 수 있는 객체를 함수 타입.

int plus(int no){
  return no+10;
}

int multiply(int no){
  return no*10;
}

Function testFun(Function argFun){
  print('argFun : ${argFun(20)}');
  return multiply;
}

main(List<String> args){
  var result = testFun(plus);
  print('result : ${result(20)}');
}
/*
argFun : 30
result : 200
 */