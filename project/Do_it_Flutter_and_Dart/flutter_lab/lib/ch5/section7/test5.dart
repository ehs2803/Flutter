some(){
  throw FormatException('my exception');
}

main(List<String> args){
  try{
    print('step1....');
    some();
    print('step2....');
  } on FormatException catch(e){
    print('step3....$e'); // 예외객체가 e로 전달.
  } on Exception catch(e){
    print('step4....$e');
  } finally{
    print('step5....');
  }
  print('step6....');
}
/*
step1....
step3....FormatException: my exception
step5....
step6....
 */
/*
만약 예외 종류를 구분하지 않겠다면 다음처럼 간단하게 작성할 수 있음.
try{
    some();
} catch(e){
    print('catch....$e');
}
 */