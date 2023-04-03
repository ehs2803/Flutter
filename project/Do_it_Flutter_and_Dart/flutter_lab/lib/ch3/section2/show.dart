import 'test1.dart' show no1, User1;
// 외부파일에 선언된 특정 요소만 사용하고 싶다면 import 구문에서 show 예약어 이용.
main(){
  no1 = 30;
  User1 user1 = User1();

  //sayHello1(); // error
}