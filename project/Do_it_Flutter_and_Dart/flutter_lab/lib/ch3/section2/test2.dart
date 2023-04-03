import 'test1.dart';

main(){
  no1=20;
  //_no2=30; // error

  sayHello1();
  //_sayHello2(); // error

  User1 user1 = User1();
  //_User2 user2 = _User2(); // error

  user1.name = 'kkang';
  //user1._address = 'busan'; // error
}