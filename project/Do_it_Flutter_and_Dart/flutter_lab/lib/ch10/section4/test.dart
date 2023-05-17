import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
비율로 배치하기 - Expended
위젯의 크기는 보통 수치로 설정하지만 비율로 설정하는 것이 효율적일 때도 있음.
Expended를 이용하면 위젯에 설정한 크기는 무시.
Row에 Expended를 설정하면 Expended에 추가한 위젯의 가로크기가 무시되며,
Column에 Expended를 설정하면 Expended에 추가한 위젯의 세로크기가 무시.

만약 각 Expended의 비율을 다르게 설정하고 싶다면 flex 속성을 이용.
flex 속성에는 숫자를 설정하며 전체 flex 값을 더한 값에서 등분.

빈 공간 넣기 - Spacer
Spacer는 빈 공간을 차지하는 위젯.
화면을 구성할 때 순서대로 위젯을 나열하다가 빈공간을 두고 특정 위젯을 오른쪽에 딱 붙여서 출력하거나 화면 아래에 붙여서 출력해야할 때가 있음.

스크롤 제공하기 - SingleChildScrollView
Row나 Column을 이용해 위젯을 배치하다 보면 화면을 벗어나는 상황이 자주 발생. 위젯의 크기가 크거나 개수가 많아서 한 화면에 출력하지 못할 때.

화면에 출력되는 위젯들의 스크롤을 제공하려면 SingleChildScrollView나 ListView를 이용

SingleChildScrollView는 위젯 1개를 스크롤되게 함.
만약 여러 위젯을 스크롤되게 하려면 Row나 Column으로 묶어서 SingleChildScrollView에 추가하면 됨.
scrollDirection으로 스크롤 방향을 꼭 설정해야 함.
Axis.vertical(수직)이나 Axis.horizontal(수평)을 설정할 수 있음.
 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Test'),
            ),

            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    child: Row(
                      children: <Widget>[
                        Container(
                          color: Colors.red,
                          width: 100,
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.amber,
                            )
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.yellow,
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    height: 300,
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/lab_instagram_icon_1.jpg'),
                        Image.asset('images/lab_instagram_icon_2.jpg'),
                        Image.asset('images/lab_instagram_icon_3.jpg'),
                        Spacer(),
                        Image.asset('images/lab_instagram_icon_4.jpg')
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    height: 300,
                  ),
                ],
              ),
            )
        )
    );
  }
}
