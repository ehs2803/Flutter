void printUser1(){
  print('hello world');
}
// 함수의 본문이 한줄일 때는 한 줄 함수로 선언 가능.
// 한 줄 함수는 본문을 중괄호로 묶지 않고 화살표 기호로 나타냄. 화살표 함수!
void printUser2() => print('hello world');

main(){
  printUser1();
  printUser2();
}