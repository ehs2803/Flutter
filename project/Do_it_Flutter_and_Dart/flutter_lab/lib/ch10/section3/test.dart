import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
각각의 위젯은 자체나 Container를 이용해 크기를 설정할 수 있음. 그런데 이보다 조금 더 세밀하거나 편하게 크기를 설정할 수 있음.

똑같은 크기로 배치하기 - IntrinsicWidth, IntrinsicHeight
Row나 Column에 추가한 여러 위젯의 크기를 똑같이 설정할 때 사용.
IntrinsicWidth, IntrinsicHeight를 이용하면 크기가 가장 큰 것을 기준으로 모두 통일.

최소, 최대 범위로 배치하기 - ConstrainedBox
ConstrainedBox는 위젯 크기의 허용 범위를 설정. ConstrainedBox로 최소, 최대 마지노선을 정해놓으면
위젯이 그보다 작거나 크게 표시되지 않도록 할 수 있음.

 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Test'),
            ),

            body: Column(
              children: [
                IntrinsicWidth(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(color: Colors.red, width: 50, height: 50.0),
                      Container(color: Colors.green, width: 150.0, height: 150.0),
                      Container(color: Colors.blue, width: 100, height: 100.0,),
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minWidth: 300,
                      maxHeight: 50
                  ),
                  child: Container(color: Colors.amber, width: 150, height: 150.0),
                )
              ],
            )
        )
    );
  }
}