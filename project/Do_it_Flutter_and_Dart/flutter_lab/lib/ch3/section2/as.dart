import 'test1.dart' as Test1;
// as 예약어를 사용해 별칭을 설정하면 해당 요소들은 별칭을 사용해 접근해야 한다.

main(){
  //no1 = 30; // error
  Test1.no1=30;

  Test1.sayHello1();
  Test1.User1 user1 = Test1.User1();
}