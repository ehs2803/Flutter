int no1 = 10;
int _no2 = 20;

void sayHello1(){}
void _sayHello2(){}

class User1{
  String? name;
  String _address='seoul';
}

class _User2{}

main(){
  no1=20;
  _no2=30;

  sayHello1();
  _sayHello2();

  User1 user1 = User1();
  _User2 user2 = _User2();

  user1.name = 'kkang';
  user1._address = 'busan';
}
// 다트에서 프로그램의 구성 요소를 선언하면 기본으로 public 상태. 즉 접근제어가 없음.
// 밑줄을 사용하면 이 파일에서만 이용하도록 제한.