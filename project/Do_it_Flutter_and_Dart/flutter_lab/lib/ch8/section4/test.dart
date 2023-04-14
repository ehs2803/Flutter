import 'package:flutter/material.dart';
/*
StatefulWidget은 상태를 유지하는 위젯.

상태란 화면에서 갱신해야 하는 데이터를 의미.

동적인 화면을 만들려면 StatefulWidget을 상속받은 클래스와 State를 상속받은 클래스가 필요.

StatefulWidget : 위젯 클래스
State : StatefulWidget의 상탯값을 유지하고 화면을 구성하는 클래스

 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Test'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// StatefulWidget을 상속받은 클래스에서는 build()함수가 없고, createState() 함수를 꼭 재정의해야함.
// 반환값은 State를 상속받은 클래스여야함.
// StatefulWidget에도 변수나 함수를 정의할 수 있지만 이 클래스에서 화면을 구성하지는 않으므로 보통은 단순하게 작성.
// StatefulWidget을 사용하는 이유는 State 클래스에서 상태를 관리할 수 있기 때문.
// 상태는 State에 선언한 변수를 의미하고, 이 변숫값을 변경할 때 화면을 다시 빌드.
// 단순히 state에 선언한 변숫값을 변경하는 것만으로 화면을 다시 빌드하지 않음.
class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyWidgetState();
  }
}

// StatefulWidget에서 반환하는 상태 클래스 중요. 상태 클래스는 State를 상속받아 작성.
// 이 상태클래스에는 build() 함수를 꼭 재정의. 이 함수에서 반환하는 위젯이 StatefulWidget의 화면을 구성.
class _MyWidgetState extends State<MyWidget> {
  bool enabled = false;
  String stateText = "disable";

  // changeCheck 함수에서 변경해도 화면에 반영 X. setState() 함수에서 변경해야함.
  // 이처럼 속성값을 변경했는데 화면에 반영되지 않는 이유는 State에 선언한 모든 속성이 화면과 관련된다고 볼 수 없기 때문
  void changeCheck() {
    // setState 매개변수는 함수.
    setState(() { // 어디선가 setState함수를 호출하면 화면을 구성하는 build() 함수가 다시 호출되고 그 결과로 반환된 위젯으로 화면을 갱신.
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: (enabled
                ? Icon(
                    Icons.check_box,
                    size: 20,
                  )
                : Icon(
                    Icons.check_box_outline_blank,
                    size: 20,
                  )),
            color: Colors.red,
            onPressed: changeCheck,
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              '$stateText',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
