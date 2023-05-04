import 'package:flutter/material.dart';
/*
제스처 감지기 - GestureDetector
GestureDectector 위젯은 사용자가 화면을 탭하거나 드래그하는 등의 행위를 감지해 특정 로직을 실행.
즉, 사용자 이벤트를 처리하는 위젯.
GestureDetector는 자체적으로 화면에 무언가를 그리지 않음.
따라서 GestureDetector의 child에 화면 구성을 대입하고 이 화면에서 발생하는 사용자 이벤트를 처리.
다양한 위젯으로 화면을 구성하고 이를 GestureDetector의 child에 추가하면 이벤트를 처리할 수 있음.

엘리베이트 버튼 - ElevatoedButton
모든 사용자 이벤트는 GestureDetector로 처리할 수 있지만 화면 구성은 직접 해줘야함.
IconButton, ElevatedButton, FloatingActionButton처럼 자주 이용하는 위젯은 자체에서 이벤트 처리 기능을 지원.
이 가운데 버튼 모양을 제공하는 ElevatedButton은 가장 범용으로 사용.

 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  onPressed() {
    print('icon button click....');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Test'),
            ),
            body: Column(
                children: [
                  GestureDetector(
                    child: Image.asset('images/icon/user.png'),
                    onTap: (){
                      print('image click...');
                    },
                    onVerticalDragStart: (DragStartDetails details){
                      print('vertical drag start...global position : ${details.globalPosition.dx}, ${details.globalPosition.dy}');
                      print('vertical drag start...local position : ${details.localPosition.dx}, ${details.localPosition.dy}');
                    }
                  ),
                  ElevatedButton(
                    onPressed: (){ // null이 대입되면 버튼 비활성화
                      print('ElevatedButton click....');
                    },
                    child: Text('Click Me'), // 화면을 구성.
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                    ),
                  )
                ]
            )
        )
    );
  }
}
