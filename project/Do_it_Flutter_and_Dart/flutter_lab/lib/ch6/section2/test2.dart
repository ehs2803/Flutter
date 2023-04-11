class MyClass{
  late int data1;
  late int data2;

  MyClass(List<int> args)
    : this.data1 = args[0],
      this.data2 = args[1] { }

  // 두개의 초기화 목록 작성 못함.
  //MyClass(int data1, int data2) : this.data1=data1, this.data2=data2{}

}
/*
생성자를 선언할 때 초기화 목록을 사용할 수 있음. 초기화 목록은 생성자 선언부를 콜론으로 구분하여 오른쪽에 작성.

초기화 목록은 단순히 생성자의 매개변수를 멤버에 대입하는 코드보다는 리스트에서 특정 항목을 선택하거나
함수 호출로 멤버를 초기화할 때 더 자주 사용. 또한 다른 생성자를 this(), super() 등으로 호출하는 구문을 작성 가능.
 */

class MyClass1{
  late int data1;
  late int data2;

  MyClass1(int arg1, int arg2)
    : this.data1 = calFun(arg1),
      this.data2 = calFun(arg2) {}

  static int calFun(int arg){
    return arg*10;
  }

  printData(){
    print('$data1, $data2');
  }
}
/*
초기화 목록에서 특정 함수를 호출하고 그 반환값으로 클래스의 멤버를 초기화할 수도 있음.
다만 생성자의 초기화 목록이 실행되는 시점은 객체 생성 이전이므로 이곳에서 호출할 수 있는 함수는
static이 추가된 클래스 멤버여야 함.
 */