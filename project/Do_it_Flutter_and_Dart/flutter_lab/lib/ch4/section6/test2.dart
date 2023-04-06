int? some(arg){ // int?이기 때문에 널이 반환 가능.
  if(arg==10){
    return 0;
  } else{
    return null;
  }
}

main(){
  int a = some(10)!;
  print('a : $a');
  int b = some(100)!; // runtime error
  print('b : $b');
}
// ! 연산자는 변수 이외 함수 호출 같은 구문에도 사용할 수 있다.
// 변수든 구문이든 결과가 널이면 런 타임 오류가 발생.