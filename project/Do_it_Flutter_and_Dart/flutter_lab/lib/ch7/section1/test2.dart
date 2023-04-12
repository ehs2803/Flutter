class SuperClass{
  int myData=10;
  void myFun(){
    print('Super..myFun()...');
  }
}

class SubClass extends SuperClass{
  int myData=20;
  void myFun(){
    print('Sub... myFun()...');
  }
}

main(List<String> args){
  var obj = SubClass();
  obj.myFun();
  print('obj.data : ${obj.myData}');
}
/*
Sub... myFun()...
obj.data : 20
 */
// 부모 클래스의 멤버를 자식 클래스에서 재정의하면 자식 클래스에서 상속되지 않는다.