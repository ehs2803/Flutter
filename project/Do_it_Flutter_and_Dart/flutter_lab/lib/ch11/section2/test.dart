import 'package:flutter/material.dart';
/*
체크박스 - Checkbox
체크박스는 사용자에게 true나 false를 입력받는 기본 위젯.
value 속성으로 체크박스의 값을 설정하며 사용자가 체크 상태를 변경할 때 호출할 이벤트 콜백 함수는 onChanged속성에 등록.

라디오 버튼 - Radio
라디오버튼도 사용자에게 true나 false를 입력받는 위젯.
라디오 버튼은 체크박스와 다르게 여러 항목 중 하나만 선택 가능.
즉, groupValue 속성이 똑같은 위젯 가운데 하나만 선택 가능.
Radio의 value 속성은 라디오 버튼을 선택 시 onChanged의 함수에 매개변수로 전달되는 값.

슬라이더 - Slider
슬라이더는 앱에서 음량을 조절할 때처럼 막대를 밀어서 숫자를 입력받는 위젯.
min, max 속성으로 값을 설정하며 사용자가 막대를 왼쪽이나 오른쪽으로 밀면 그 사이의 값이 onChanged에 지정한 함수의 매개변수에 전달.

스위치 - Switch
스위치도 사용자에게 true나 false를 입력받는 위젯.
주로 활성, 비활성 상태를 선택받을 때 사용.

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
            body: TestScreen()
        )
    );
  }
}

class TestScreen extends StatefulWidget {
  @override
  TextState createState() => TextState();
}

class TextState extends State<TestScreen> {

  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox Test'),
        Row(
          children: [
            Checkbox(
                value: isChecked,
                onChanged: (bool? value){
                  setState(() {
                    isChecked = value;
                  });
                }
            ),
            Text('checkbox value is $isChecked')
          ],
        ),
        Text('Radio Test'),
        Row(
          children: [
            Radio(
                value: "android",
                groupValue: selectPlatform,
                onChanged: (String? value){
                  setState(() {
                    selectPlatform = value;
                  });
                }
            ),
            Text('android')
          ],
        ),
        Row(
          children: [
            Radio(
                value: "ios",
                groupValue: selectPlatform,
                onChanged: (String? value){
                  setState(() {
                    selectPlatform = value;
                  });
                }
            ),
            Text('ios')
          ],
        ),
        Text('select platform is $selectPlatform'),
        Text('Slider Test'),
        Slider(
            value: sliderValue,
            min: 0,
            max: 10,
            onChanged: (double value){
              setState(() {
                sliderValue = value;
              });
            }
        ),
        Text('slider value is $sliderValue'),
        Text('Switch Test'),
        Switch(
            value: switchValue,
            onChanged: (bool value){
              setState(() {
                switchValue = value;
              });
            }
        ),
        Text('select value is $switchValue')
      ],
    );
  }
}