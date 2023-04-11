class MyClass{
  late String data1;

  MyClass(int data1, int data2){
    print('MyClass() call....');
  }

  // error
  // MyClass.first(int arg){
  //   this.(arg,0);
  // }

  // error
  //MyClass.first(int arg) : this(arg,0){} // {}때문에 error

  MyClass.first(int arg) : this(arg, 0);

  //error
  //MyClass.first(int arg) : this(arg,0), this.data1=arg1; // this() 호출문 외에 다른 구문을 사용할 수 없음. this()만 작성해야함.

  MyClass.second() : this.first(0); // 명명된 생성자 호출 가능.
}
/*
한 클래스에 생성자를 여러개 선언하면 생성자에서 다른 생성자를 호출해야 할 수도 있다.
이렇게 하면 객체 생성 시 생성자가 중첩되어 호출.

다른 생성자를 호출하는 this()는 생성자의 콜론 오른쪽 초기화 목록에 작성해야 함.
그런데 초기화 목록에 this() 호출문을 작성하면 생성자 본문을 작성 X
 */