main(){
  List<int>? list=[10,20,30];
  print('list[0] : ${list?[0]}'); // 10

  list=null;
  print('list[0] : ${list?[0]}'); // null
}
// ?[] 연산자(conditional subscript access)는 널 허용 List의 데이터를 인덱스로 접근할 때 사용.
// List 객체가 널이 아닐 때에 접근할 수 있으며 널이면 null을 반환.