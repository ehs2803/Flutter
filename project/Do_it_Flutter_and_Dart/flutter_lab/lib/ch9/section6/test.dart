import 'package:flutter/material.dart';
/*
영역을 표현하는 컨테이너 - Container
Container는 화면의 영역을 표현하는 위젯. 자체 화면은 가지지 않으며 child로 Container영역에 표시할 위젯을 지정 가능.
특정 영역의 margin, border, padding 등을 지정할 수 있으며 배경 색상, 배경 이미지 등 다양하게 꾸미는 방법을 제공.
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
          title: Text('Test'),
        ),
        body: Container(
          height: Size.infinite.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red,
                Colors.yellow,
              ],
            ),
          ),
          child: Center( // 대상 위젯을 Center 영역의 가운데에 배치.
            // 특정 위젯을 정렬하는 위젯은 Center 말고도 여럿이지만, 대부분은 특정 영역에서 가운데에 배치하는 경우가 많으며 이때 Center를 많이 사용.
            // heightFactor: 2,
            // widthFactor: 2,
            // 위 속성 두개는 Center가 차지하는 크기를 지정할 때 사용. 지정하지 않으면 가능한 최대 크기를 차지.
            // 위 두 속성은 Center의 크기를 child에 추가하는 위젯의 배수로 지정.
            child: Container(
              /*
                EdgeInsets는 마진과 패딩값을 지정할 때 사용하는 클래스. 상하좌우 네 방향에 똑같은 크기의 마진이나 패딩값을
                지정하려면 EdgeInsets.all()을 생성자를 이용하며, 한 방향의 값을 설정하려면 EdgInsets.only() 함수를 이용.
                EdgeInsets.only(left:30, top:60)

                가로나 세로 방향의 값을 지정하고 싶으면 EdgeInsets.symmetric() 생성자를 이용.
                EdgeInsets.symmetric(vertical: 30.0)
               */
              margin: EdgeInsets.all(10.0),
              /*
                Container를 이용해 사각형이 아닌 원을 출력할 수 있음. decoration 속성을 지정.
                BoxDecoration의 shape 속성에 BoxShape.circle을 지정.
               */
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage( // 원에 이미지를 출력하기 위해서...
                    image: AssetImage('images/big.jpeg'), fit: BoxFit.cover),
              ),
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
