import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
Row나 Column을 사용하지 않고 특정 위젯을 원하는 위치에 나오게 하고 싶을 때가 있음.
특히 Stack은 겹쳐서 나오므로 특정 위치를 설정해야 할 때가 많음.
이럴 때 Align과 Positioned 위젯을 사용. Align은 Stack뿐만 아니라 독립적으로 사용할 수 있지만,
Positioned는 Stack에서만 사용할 수 있음.

특정 위치에 배치하기 - Align
Align은 aligment 속성으로 설정.
Alignment 클래스에 정의된 center, bottomRight 등의 상수로 위젯의 위치를 설정할 수도 있지만,
Alignment 생성자의 매개변수에 숫자를 넘겨 위치를 설정할 수도 있음. Alignment(double x, double y)
생성자의 매개변수 x는 X축의 위치, y는 Y축의 위치.
x와 y는 -1.0~1.0까지의 값을 설정할 수 있으며, 0.0은 사각형의 중앙.
Alignment생성자에서 직접 x,y축 위치값을 설정해도 되지만, 자주 이용되는 위치는 다음처럼 상수로 제공.
- bottomCenter : Alignment(0.0, 1.0)
- bottomLeft : Alignment(-1.0, 1.0)
- bottomRight : Alignment(1.0, 1.0)
- center : Alignment(0.0, 0.0)
- centerLeft : Alignment(-1.0, 0.0)
- centerRight : Alignment(1.0, 0.0)
- topCenter : Alignment(0.0, -1.0)
- topLeft : Alignment(-1.0, -1.0)
- topRight : Alignment(1.0, -1.0)
Alignment로 설정하는 위치는 Align 위젯이 포함되는 사각형 내에서의 위치. 즉, 전체 화면이 아니라 Align 위젯의 부모 위젯이 기준.

왼쪽 위를 기준으로 배치하기 - FractionalOffset
Alignment는 주어진 위치값을 부모 위젯의 중심을 기준으로 계산.
즉, Alignment(0.0, 0.0)이 원점. 만약 일반 좌표 시스템처럼 왼쪽 위를 원점으로 계산하려면 FractionalOffset 클래스를 이용.
FractionalOffset 생성자에 X,Y축의 위치값을 0.0~1.0으로 설정.
FractionalOffset 생성자에 X,Y축 위치값을 설정해도 되지만, 자주 이용되는 위치는 다음처럼 상수로 제공.
- bottomCenter : FractionalOffset(0.5, 1.0)
- bottomLeft : FactionalOffset(0.0, 1.0)
- bottomRight : FrationalOffset(1.0, 1.0)
- center : FractionalOffset(0.5, 0.5)
- centerLeft : FractionalOffset(0.0, 0.5)
- centerRight : FractionalOffset(1.0, 0.5)
- topCenter : FractionalOffset(0.5, 0.0)
- topLeft : FractionalOffset(0.0, 0.0)
- topRight : FractionalOffset(1.0, 0.0)

상대 위치값으로 배치하기 - Positioned
Positioned는 Align과 마찬가지로 위젯의 위치를 설정하는 위젯.
Align은 독립적으로 사용할 수 있지만, Positioned는 꼭 Stack의 하위에 사용해야함.
Positioned는 right, left, top, bottom 속성으로 위치를 설정. 각 속성값을 기준으로 부모 위젯에서 얼마나 떨어져야 하는지를 표현.

 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),

          body: Stack(
            children: [
              Align(
                  alignment: Alignment(0.0, 0.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.yellow,
                  )
              ),
              Align(
                alignment: FractionalOffset(1.0, 0.0),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                left: 40.0,
                top: 40.0,
                child: Container(
                  color: Colors.pink,
                  height: 150.0,
                  width: 150.0,
                ),
              )
            ],
          ),
        )
    );
  }
}