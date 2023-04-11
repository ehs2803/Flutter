class MyClass{}

class MyClass1{
  final int data1;
  const MyClass1(this.data1);
}

main(){
  // 객체 생성 시 필요하다면 const를 추가해 상수 객체로 만들 수 있음.
  // const로 객체를 생성하려면 생성자 또한 const로 선언해야 한다.
  //var obj1 = const MyClass();

  var obj2 = const MyClass1(10);

  var obj3 = MyClass1(10);
  var obj4 = MyClass1(10);
  print('obj3 == obj4 : ${obj3==obj4}'); //obj3 == obj4 : false
  // 상수 생성자를 선언한 클래스더라도 일반 객체로 선언하면 서로 다른 객체가 생성.

  var obj5 = MyClass1(20);
  var obj6 = MyClass1(20);
  print('obj5 == obj6 : ${obj5==obj6}'); //obj5 == obj6 : false
  // const를 붙여 상수 객체로 선언하면서 생성자에 전달한 값(초깃값)이 똑같으면 객체를 다시 생성하지 않고 이전 값으로 생성한 객체를 그대로 사용.
  // 즉, 상수 객체는 값이 똑같은 객체를 재사용.

  // 그러나 객체를 생성 시 전달하는 초깃값이 다르면 서로 다른 객체가 생성.
  // 즉, 상수객체는 같은 값으로 생성한 객체를 재활용할 목적으로 사용.
  // 만약 똑같은 값으로 객체를 2개 생성하면서 하나는 일반 객체, 하나는 const를 붙여 상수 객체로 선언하면 이때는 서로 다른 객체가 생성

}