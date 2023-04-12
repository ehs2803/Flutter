class SuperClass{
  SuperClass(int arg){}
  SuperClass.first(){}
}

class SubClass extends SuperClass{
  // 컴파일러가 자동으로 추가하는 super() 코드는 매개변수가 없고 부모 클래스 이름으로 선언된 기본 생성자만 호출
  //SubClass() : super() {} // error
  SubClass() : super(10){}
  SubClass.name() : super.first(){}
}
/*
만일 부모 생성자가 매개변수나 명명된 생성자를 가진다면 super()문을 생략하면 안되고 반드시 그에 맞는 생성자를 호출
 */