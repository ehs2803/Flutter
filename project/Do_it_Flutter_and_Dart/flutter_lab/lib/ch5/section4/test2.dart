some(int ff(int a)){
  ff(30);
}

main(List<String> args){
  some((int a){
    return a+20;
  });
}
/*
Function 타입으로 선언한 변수에는 모든 함수를 대입할 수 있음.

하지만 때로는 함수 타입 변수에 대입할 함수를 특정한 형태로 한정하고 싶을 때가 있음.

예를 들어 int 타입 매개변수를 하나 받고 결과 역시 int로 반환하는 함수만 대입할 수 있게 선언할 수 있다.
 */