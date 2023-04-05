main(){
  Set<int> set1 = {10,20,10}; // 초기화 시 중괄호 사용.
  print(set1);
  set1.add(30);
  set1.add(40);
  set1.add(10);
  print(set1);

  Set<int> set2 = Set();
  set2.add(10);
  set2.add(20);
  print(set2);
  // set은 인덱스 값으로 데이터 접근. 리스트와 차이가 있다면 중복 데이터 허용 X
}