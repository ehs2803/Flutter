import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// 플러터에서 제공하는 아이콘 말고도 다양한 아이콘을 이용 가능.
// 그중 많은 사람이 이용하는 폰트 어섬에서 제공하는 아이콘은 FontAwesomeIcons 패키지로 이용할 수 있음.
// pubspec.yaml 파일에 의존성 등록을 해줘야 함.

/*
아이콘을 출력할 때는 Icon위젯을 사용.

Icon 위젯을 사용하려면 아이콘을 지정해야하는데 그 역할을 IconData 객체가 함.
결국 Icon은 IconData에 크기나 색상 등을 설정하는 위젯.
IconData로 아이콘을 만들어 적용할 수 있고 플러터나 외부에서 제공하는 아이콘을 사용할 수 있음.

플러터가 제공하는 아이콘에서 alarm이라는 이름의 알람 아이콘을 사용하는 코드
static const IconData alarm = IconData(0xe072, fontFamily: 'MaterialIcons');
 */

// 플러터나 폰트 어섬에서 제공하는 아이콘을 사용하면 앱을 빌드할 때 네트워크에서 내려받아 내장.
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
                  Icon(
                      Icons.alarm,
                      size: 100,
                      color: Colors.red
                  ),
                  FaIcon( // 폰트 어섬에서 제공하는 아이콘은 FontawesomeIcnos 패키지의 FaIcon 위젯으로 사용
                      FontAwesomeIcons.bell,
                      size: 100,
                  ),
                  IconButton( // 클릭할 수 있는 버튼. 클릭시 이벤트는 onPressed 속성에서 지정.
                      onPressed: onPressed,
                      icon: Icon(Icons.alarm, size: 100,)
                  )
                ]
            )
        )
    );
  }
}
