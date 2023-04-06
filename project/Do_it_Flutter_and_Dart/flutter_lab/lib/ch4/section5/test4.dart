int no1=10; // 널 불허
int? no2; // 널 허용

var a1 = no1; // int
var a2 = no2; // int?

testFun(){
  a1=20;
  //a1=null; // error

  a2=20;
  //a2="hello"; // error
  a2=null;
}