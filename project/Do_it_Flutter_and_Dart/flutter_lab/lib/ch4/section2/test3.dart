main(){
  String s1 = 'hello';
  const String s2 = 'world';
  final String s3 = 'hello world';

  String s4 = '$s1, $s2';
  const String s5 = '$s2';
  //const String s6 = '$s1, $s2, $s3'; // error.. s1, s3 잘못 사용.
  final String s7 = '$s1, $s2, $s3';
}
// 문자열 템플릿에 상수를 사용할 때
// const 예약어로 선언한 문자열 템플릿에는 컴파일 타임 상수를 사용해야 한다.