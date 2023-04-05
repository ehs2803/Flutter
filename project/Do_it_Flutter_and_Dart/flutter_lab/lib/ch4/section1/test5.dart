main(){
  int n1=10;
  double d1=10.0;

  //double d2=n1; // error
  //int n2=d1; // error
  // 다트에서는 int, double 모두 객체이므로 형 변환도 자동으로 이뤄지지 않는다.
  // int, double이 객체이며 두 클래스 사이에 상속 관계가 없으므로 자동으로 형변환 X

  double d2 = n1.toDouble();
  int n2 = d1.toInt();

  int n3=10;
  String s1 = '10';

  String s2 = n1.toString();
  int n4 = int.parse(s1);
}