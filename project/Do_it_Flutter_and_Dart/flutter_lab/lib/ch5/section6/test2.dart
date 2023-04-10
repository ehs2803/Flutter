class User{
  void some(){
    print('User...some()...');
  }
}

main(){
  Object obj = User();
  //obj.some(); // error

  if(obj is User){ // 타입확인, 자동 형 변환. is연산자는 타입을 확인해 true나 false로 알려줌.
    obj.some(); // true이면 자동으로 형 변환.
  }

  Object obj1 = User();
  // 상위에서 하위로 바꿀 때는 명시적 형 변환을 해야함.
  (obj1 as User).some(); // 명시적 형 변환. as 연산자는 타입을 바꿔줌.
}
/*
다트에서 최상위 클래스는 Object.
 */