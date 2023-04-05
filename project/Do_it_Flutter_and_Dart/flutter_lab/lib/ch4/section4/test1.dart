// 컬렉션 타입이란 한 변수에 여러 데이터를 저장하는 방법으로
// 배열, 리스트, 집합, 맵 등이 있다.
// 다트에서 배열, 리스트를 구분하지 않으므로 배열이 리스트이고 리스트가 곧 배열.

main(){
  List list1 = [10, 'hello', true];
  list1[0]=20;
  list1[1]=false;
  print('List : [${list1[0]}, ${list1[1]}, ${list1[2]}]');
  // 리스트는 데이터를 여러개 저장하고 인덱스값으로 데이터를 이용하는 클래스.
  // 리스트에 대입할 데이터의 타입을 지정하지 않았으므로 dynamic 타입 리스트가 됨.

  List<int> list2 = [10,20,30];
  //list2[0]='true'; // error
  //데이터타입을 제네릭으로 명시하면 다른 타입 대입 시 오류.

  List<int> list3 = [10,20,30];
  print(list3);

  list3.add(40);
  list3.add(50);
  print(list3);

  list3.removeAt(0);
  print(list3);
  // 리스트 선언 시 초기화한 데이터에서 더 추가하기 위해서는 add, 제거는 removeAt

  var list4 = List<int>.filled(3, 0);
  print(list4);

  list4[0]=10;
  list4[1]=20;
  list4[2]=30;
  print(list4);

  //list4.add(40); // runtime error.. 리스트 크기가 3이라 추가하면 런타임 오류.
  // 리스트 선언 시 데이터를 몇 개 저장할지 크기 지정 가능.
  // filled, generate 함수 이용.

  var list5 = List<int>.filled(3, 0, growable: true);
  print(list5);

  list5[0]=10;
  list5[1]=20;
  list5[2]=30;
  print(list5);

  list5.add(40);
  print(list5);
  // 처음에 지정한 크기보다 많은 데이터를 저장하기 위해서는 filled 생성자에 growable 매개변수를 true로 지정.

  var list6 = List<int>.generate(3, (index) => index*10, growable: true);
  print(list6);
  // 리스트 초기화 시 특정한 로직으로 구성된 데이터를 지정 가능.

}