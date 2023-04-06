int a1=10;
int? a2=10;

main(){
  //a1=a2; // error
  a1 = a2 as int; // 명시적 형 변환 연산자 as를 사용해야함.
  a2=a1;
}
// Nullable은 NonNull의 상위 타입.
// int?가 int의 상위타입.
// 널 불허 변수를 널 허용에 대입할 때는 자동으로 형 변환.