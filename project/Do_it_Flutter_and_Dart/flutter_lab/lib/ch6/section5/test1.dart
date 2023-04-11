class MyClass1{
  const MyClass1();
}

class MyClass{
  //int data1;
  final int data1;
  const MyClass(this.data1);
}

main(){
  var obj1 = MyClass(10);
  var obj2 = MyClass(20);
  print('obj1.data : ${obj1.data1}, obj2.data : ${obj2.data1}');
}
// 상수 생성자는 const 예약어로 선언하며 본문을 가질 수 없음. {}를 추가할 수 없음.
// 상수 생성자가 선언된 클래스의 모든 멤버 변수는 final로 선언해야 함.
// 따라서 상수 생성자는 클래스의 모든 변수를 초깃값으로만 사용하도록 강제하는 수단으로 사용.
