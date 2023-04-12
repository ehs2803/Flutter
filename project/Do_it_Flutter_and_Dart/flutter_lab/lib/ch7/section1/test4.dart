class SuperClass{
  SuperClass(){}
}

class SubClass extends SuperClass{
  SubClass(){}
}

class SubClass1 extends SuperClass{
  SubClass1() : super() {}
}

main(){
  var obj = SubClass();
  var obj1 = SubClass1();
}
/*
자식 클래스의 객체를 생성할 때 자신의 생성자가 호출되는데, 이때 부모 클래스의 생성자도 반드시 호출되게 해줌.

자식 클래스의 생성자에서 부모 클래스의 생성자를 호출하려면 super() 문을 사용.
super()문은 생성자의 본문이 아니라 선언부의 콜론 오른쪽에 작성.

SubClass가 오류가 나지 않는 이유는 컴파일러가 자동으로 부모 클래스의 기본 생성자를 호출해주기 때문.
 */