/*
명명된 매개변수에 기본인자를 설정 가능.
기본 인자란 함수 호출 때 데이터를 전달받지 못하면 매개변수에 대입하는 기본값.

명명된 매개변수는 선택적이므로 해당 매개변수는 null이 되므로 타입 뒤에 물음표를 붙여서 널 허용으로 선언해야 한다.
만약 명명된 매개변수를 널 불허로 선언하려면 기본 인자를 설정해야 한다.
 */

String myFunc({String data='hello'}){
  return data;
}

main(){
  print('myFunc() result : ${myFunc()}');
  print('myFuc(world) result : ${myFunc(data: 'world')}');
}
/*
myFunc() result : hello
myFuc(world) result : world
 */