String _name='Hello';

String get name{
  return _name.toUpperCase();
}

set name(value){
  _name=value;
}
/*
게터와 세터 함수는 일반적으로 어떤 데이터를 가져오거나 변경하는 함수를 의미.
다트 언어에서는 데이터를 가져올 함수에 get 예약어를 추가하고, 데이터를 변경할 함수에 set 예약어를 추가하면 함수를 변수처럼 이용할 수 있음.
 */

main(){
  print(name); // 데이터 접근 시 자동으로 get 예약어로 선언한 함수가 호출
  name='World'; // 자동으로 set 예약어로 선언한 함수가 호출
  print(name);
}
// get과 set 예약어를 추가한 name은 변수가 아니라 함수. 하지만 name은 변수처럼 이용 가능.
