main(){
  String? data4='hello';
  String? result = data4 ?? ' world';
  print('result : $result');

  data4=null;
  result = data4 ?? 'world';
  print('result : $result');
}
/*
result : hello
result : world
 */
// 널 허용 변수가 널일 때 대체값을 지정하고 싶다면 ?? 연산자 사용.