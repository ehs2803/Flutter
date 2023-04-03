import 'test1.dart';
// 같은 패키지에 있는 파일만 상대경로로 불러올 수 있음.

// package 접두사를 통해서 불러올 수도 있음.
// import 'package:flutter_lab/outer_folder/outer_main.dart';

main(){
  print('$no');
  sayHello();
  User user = User();
  user.sayHello();
}