main(){
  int no=10;
  String name='kkang';

  String myFun(){
    return 'kim';
  }

  print('no : $no, name : $name, 10+20 : ${10+20}, myFun() : ${myFun()}');
}
// 문자열에 동적인 결과를 포함하는 것을 문자열 템플릿이라고 함.
// $기호 사용.
// $변수명, 실행문의 결과는 ${}