var a1=10; // int
var a2=null; // dynamic
var a3; // dynamic
// dynamic은 널을 포함한 모든 타입의 데이터를 대입 가능. Nullable을 포함.
testFun(){
  a1=20;
  //a1=null; // error

  a2=20;
  a2="hello";
  a2=null;

  a3=20;
  a3="hello";
  a3=null;
}