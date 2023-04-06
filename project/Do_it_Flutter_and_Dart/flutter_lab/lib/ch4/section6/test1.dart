int? a1=20;

main(){
  a1!;
  a1=null;
  a1!; // runtime error
}
// 어떤 변수가 null인지 점검할 때는 ! 연산자(null assertion operator)를 사용.
// 변수 이름 뒤에 !를 붙인다. 이 변숫값이 널이라면 오류 발생.
// 널 불허변수 뒤에 추가할 수도 있지만 애초에 널을 대입할 수 없으므로 의미X
