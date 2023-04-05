main(){
  Map<String, String> map1 = {'one':'hello', 'two':'world'};

  print(map1['one']);
  map1['one']='world';
  print(map1['one']);
  // map은 여러 건의 데이터를 키와 값 형태로 저장하는 타입.
  // 맵에 저장되는 데이터는 항상 키를 가져야 하므로 저장된 데이터에 접근 시 인덱스가 아닌 키를 이용

  map1['three']='dart';
  print(map1);
  // 위 코드와 같이 키, 값 추가 가능.
}