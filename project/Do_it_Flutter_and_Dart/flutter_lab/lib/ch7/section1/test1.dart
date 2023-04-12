class SuperClass{
  int myData=10;
  void myFun(){
    print('Super..myFun()...');
  }
}

class SubClass extends SuperClass{
}

main(List<String> args){
  var obj = SubClass();
  obj.myFun();
  print('obj.data : ${obj.myData}');
}
/*
상속은 클래스를 재활용하는 객체지향 프로그래밍의 핵심 기능.

기존 클래스를 상속받으면 새 클래스에서 기존 클래스의 멤버를 이용 가능.

클래스를 상속받으면 부모 클래스에 선언된 멤버를 자식 클래스에서 그대로 사용할 수 있지만, 원한다면 재정의가능(오버라이딩)
 */