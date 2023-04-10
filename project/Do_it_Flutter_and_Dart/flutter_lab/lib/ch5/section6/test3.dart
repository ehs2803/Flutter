class User{
  String? name;
  int? age;

  some(){
    print('name: $name, age: $age');
  }
}
// .. or ?..연산자는 같은 객체를 반복해서 접근할 때 편리하게 사용할 수 있는 캐스케이드 연산자.

main(){
  var user = User();
  user.name='kkang';
  user.age=10;
  user.some();

  User()
    ..name='lee'
    ..age=20
    ..some(); // nullable 객체일 때는 ?..연산자 사용.
}