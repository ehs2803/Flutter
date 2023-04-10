String _name='Hello';
String get name1{
  return _name.toUpperCase();
}

main(List<String> args){
  //name="world"; // error
}
// 일반적으로 게터와 세터를 모두 선언하지만 원한다면 둘 중 하나만 선언할 수 있음.
// 만약 get 예약어로 게터만 선언한다면 final 변수처럼 데이터를 가져오기만 할 뿐 바꿀 수 없음.
