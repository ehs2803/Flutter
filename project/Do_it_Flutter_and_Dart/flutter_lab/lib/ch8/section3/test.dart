import 'package:flutter/material.dart';

/*
개발자가 만드는 위젯은 다음 3가지 클래스 가운데 하나를 상속받아 작성.
1. StatelessWidget : 상태를 관리하지 않는 정적인 위젯
2. StatefulWidget : 상태를 관리하는 동적인 위젯
3. InheritedWidget : 여러 위젯에서 공통으로 이용할 상태 관리 위젯

StatelessWidget은 상태와 연결되지 않는 위젯을 만드는 클래스.

상태는 화면에 업데이트되는 데이터를 의미.

StatelessWidget 클래스는 화면에 업데이트되는 데이터와 연결할 수 없으므로 처음 생성할 때의 정보로만
화면을 구성 가능. 이후에 화면의 내용이 바뀌지 않는 화면, 즉 정적인 화면을 만들 때 사용.

정적인 화면을 만들때 StatelessWidget을 상속받은 클래스를 선언하고 여기서 build() 함수를 재정의.

build()함수는 자동으로 호출되며 이 함수에서 반환하는 Widget 객체가 출력할 화면 정보.
 */
void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    if (enabled) {
      stateText = "disable";
      enabled = false;
    } else {
      stateText = "enable";
      enabled = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Stateless Test'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: (enabled ? Icon(Icons.check_box, size: 20,) : Icon(Icons.check_box_outline_blank, size: 20,)),
                  color: Colors.red,
                  onPressed: changeCheck,
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('$stateText', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          )
        )
    );
  }
}