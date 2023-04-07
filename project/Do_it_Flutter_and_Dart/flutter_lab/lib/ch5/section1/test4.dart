dynamic some1(){
  return 10;
}

some2(){
  return 10;
}
// 반환 타입을 생략하면 dynamic 타입이되어 모든 타입의 데이터를 반환 가능.
// dynamic 함수에서 return 문으로 데이터를 반환하지 않으면 자동으로 null을 반환.
some3(){

}

main(){
  print('some1 result : ${some1()}');
  print('some2 result : ${some2()}');
  print('some3 result : ${some3()}');
}
/*
some1 result : 10
some2 result : 10
some3 result : null
 */