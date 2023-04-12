class SuperClass{
  int myData=10;
  void myFun(){
    print('Super..myFun()');
  }
}

class SubClass extends SuperClass{
  int myData=20;
  void myFun(){
    super.myFun();
    print('Sub... myFun()..myData : $myData, super.myData : ${super.myData}');
  }
}

main(List<String> args){
  var obj = SubClass();
  obj.myFun();
}
/*
Super..myFun()
Sub... myFun()..myData : 20, super.myData : 10
 */