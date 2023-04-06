String? str = "hello";

main(){
  //str.isEmpty; // error
  str?.isEmpty;
}
// 널 허용 객체나 리스트의 멤버에 접근 시 ?.나 ?[] 연산자를 사용해야 한다.
// ?. 연산자를 사용하면 객체가 널이 아닐 때만 멤버에 접근하며, 널이면 멤버에 접근할 수 없고 null을 반환.
