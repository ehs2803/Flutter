mixin MyMixin{
  int mixinData=10;
  void mixinFun(){
    print('MyMixin... mixInFun()...');
  }
}

class MySuper{
  int superData=20;
  void superFun(){
    print('Mysuper... superFun()');
  }
}

class MyClass extends MySuper with MyMixin{
  void sayHello(){
    print('class data : $superData, mixin data : $mixinData');
    mixinFun();
    superFun();
  }
}

main(){
  var obj = MyClass();
  obj.sayHello();

  var obj2 = MyClass();
  if(obj2 is MyMixin){
    print('obj2 is MyMixin');
  } else{
    print('obj2 is not MyMixin');
  }

  MyMixin obj3 = MyClass(); // 믹스인 타입으로 사용가능. 다만 mixin에 선언된 변수, 함수만 접근, 호출 가능.
  //obj3.sayHello(); // error
  obj3.mixinFun();
}
/*
class data : 20, mixin data : 10
MyMixin... mixInFun()...
Mysuper... superFun()
obj2 is MyMixin
MyMixin... mixInFun()...
 */