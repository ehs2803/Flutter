mixin MyMixin on MySuper{
}

class MySuper{

}

// MySuper를 상속받은 MyClass에서 MyMixin 사용 가능.
class MyClass extends MySuper with MyMixin{

}

// error
// class MySomeClass with MyMixin{
//
// }
/*
믹스인은 모든 클래스에서 with 예약어를 사용할 수 있음.
그런데 특정 타입의 클래스에서만 사용하도록 제한 가능.
이때 믹스인 선언부에 on 예약어로 해당 타입을 지정.
 */