import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
가로로 배치하기 - Row
세로로 배치하기 - Column
크기 설정하기 - mainAxisSize
Row와 Column은 기본축과 교차축이라는 2개의 축이 있음. 위젯 배치 시 크기나 정렬을 조정할 때 이러한 축 개념을 이용
Row는 윗젯을 가로로 배치하므로 가로방향이 기본축이며 세로방향이 교차축.
Column은 위젯을 세로로 배치하므로 세로방향이 기본축이며 가로방향이 교차축.

Row나 Column의 기본축 크기를 조정하는 속성은 mainAxisSize. mainAxisSize에는 MainAxisSize.max나 MainAxisSize.min값을 설정할 수 있는데
전자는 최대 크기, 후자는 출력할 위젯의 크기만큼을 의미.

배치 설정하기 - Alignment
배치는 Row나 Column에 추가하는 위젯을 어떻게 배치할 것인지를 정할 때 사용.
Row나 Column의 기본 배치는 가로와 세로지만 대상 위젯의 크기가 다를 때는 가운데 정렬할지 아니면 시작이나 끝부터 배치할지 정할 수 있음.
배치를 설정하지 않으면 기본축은 start이며, 교차축은 center.
기본축 배치를 설정한다면 mainAxisAlignment 속성에 MainAxisAlignment 클래스의 상수를 이용.
- center : 중앙에 배치
- end : 끝에 배치
- start : 시작에 배치
- spaceAround : 각 위젯의 앞뒤 공백을 균등하게 배치
- splaceBetween : 위젯 간 공백을 균등하게 배치
- spaceEvenly : 앞뒤 그리고 각 위젯 간 공백을 균등하게 배치
교차축 배치 crossAxisAlignment 속성에 다음과 같은 CrossAxisAligment 클래스 상수를 이용
- baseline : 기준선에 맞춰 배치
- center : 가운데 배치
- end : 끝에 배치
- start : 시작에 배치
- stretch : 교차축을 모두 차지하게 배치

겹쳐서 모두 보이기 - Stack
Stack은 위젯을 겹쳐서 배치할 때 사용. Stack의 children 속성에 위젯을 추가하면 추가된 순서대로 겹쳐서 출력.
Stack에 추가되는 위젯의 위치를 조정할 수 있지만 설정하지 않으면 기본으로 Left-Top이 적용.

겹쳐서 하나만 보이기 - IndexedStack
IndexedStack은 Stack처럼 위젯을 겹쳐서 배치하는 위젯.
Stack은 여러 위젯이 겹쳐서 보이지만, IndexedStack은 하나만 보여주는 위젯.
화면에 출력할 위젯은 index 속성으로 설정.


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
                  Container(
                      margin: EdgeInsets.only(bottom: 5),
                      color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: 50, height: 100, color: Colors.red,),
                          Container(width: 50, height: 50,  color: Colors.green,),
                          Container(width: 50, height: 150, color: Colors.blue,),
                        ],
                      )
                  ),
                  Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(width: 50, height: 100, color: Colors.red,),
                          Container(width: 50, height: 50,  color: Colors.green,),
                          Container(width: 50, height: 150, color: Colors.blue,),
                        ],
                      )
                  ),
                  Container(
                      color: Colors.yellow,
                      margin: EdgeInsets.only(bottom: 5),
                      height: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(width: 50, height: 100, color: Colors.red,),
                          Container(width: 50, height: 50,  color: Colors.green,),
                          Container(width: 50, height: 150, color: Colors.blue,),
                        ],
                      )
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.only(bottom: 5),
                    height: 200,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.yellow,
                        )
                      ],
                    ),
                  ),
                ]
            )
        )

    );
  }
}