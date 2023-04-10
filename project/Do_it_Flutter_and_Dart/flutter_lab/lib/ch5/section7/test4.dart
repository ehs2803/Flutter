/*
try-on-finally 구문은 예외 처리 조합.
try문에 작성한 코드에서 예외가 발생하면 on문이 실행되며, finally문에는 예외와 상관없이
무조건 실행할 코드를 작성.
 */
some(){
  throw FormatException('my exception');
}

main(List<String> args){
  try{
    print('step1....');
    some();
    print('step2....');
  } on FormatException{
    print('step3....');
  } on Exception{
    print('step4....');
  } finally{
    print('step5....');
  }
  print('step6....');
}
/*
step1....
step3....
step5....
step6....
 */