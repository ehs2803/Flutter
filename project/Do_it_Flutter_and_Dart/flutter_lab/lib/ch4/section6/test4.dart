main(){
  int? no1=10;
  bool? result1 = no1?.isEven;
  print('result1 : $result1'); // true

  no1 = null;
  bool? result2 = no1?.isEven;
  print('result2 : $result2'); // null
}