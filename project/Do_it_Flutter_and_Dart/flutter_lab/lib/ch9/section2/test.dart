import 'package:flutter/material.dart';
/*
Text는 문자열을 출력하는 위젯.
Text(String data, { })
Text.rich(InlineSpan textSpan, { })
Text는 위와 같이 두가지 생성자를 제공. Text() 생성자는 매개변수로 대입한 문자열을 출력. Text.rich()는 Text로 출력하는 문자열을 다양하게 꾸밀 수 있음.
 */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String longTxt =
      '동해물과 백두산이 마르고 닳도록 하나님이 보우아사 우리나라 만세. 무궁화 삼천리 화려강산 대한 사람 대한으로 기리 보전하세';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Hello world'),
              Text(
                'Hello world',
                textAlign: TextAlign.center,
              ),
              Text(
                'Hello World',
                style: TextStyle( // 문자열을 꾸밀때 style 속성에 TextStyle 객체로 지정.
                  fontWeight: FontWeight.bold, // 굻게
                  fontStyle: FontStyle.italic, // 기울임꼴
                  color: Colors.red, // 글꼴 색상
                  fontSize: 20, // 글꼴 크기
                  height: 2, // 세로크기 (줄 간격)
                  backgroundColor: Colors.yellow, // 바탕색
                  decoration: TextDecoration.underline, //밑줄 장식
                  decorationColor: Colors.red, //장식 색상
                  decorationStyle: TextDecorationStyle.wavy, // 장식 모양(물결)
                ),
              ),
              Text(
                longTxt,
                style: TextStyle(
                  fontSize: 20
                ),
                maxLines: 2, // 텍스트에 긴 문자열을 출력하면 자동으로 줄 바꿈해서 여러줄로 출력. 특정 줄 만큼 출력하고 싶을 경우...
                overflow: TextOverflow.fade, // 문자열이 생략되었음을 알리는 효과를 주고 싶다면 overflow를 이용
                /*
                overflow 속성은 다음 4가지가 있음.
                - visible : 자동 개행(기본값)
                - ellipsis : 말 줄임표(...)표시
                - fade : 흐리게 표시
                - clip : 생략 효과 없음
                 */
              ),
              RichText( // text.rich로 작성할 수도 있음. TextSpan 위젯으로 문자열의 스타일으 지정할 때 사용.
                // style 속성은 전체 문자열을 대상으로 하지만, TextSpan은 문자열 중 일부분에만 특정 스타일을 적용하고 싶을 때 사용
                  text: TextSpan(
                      text: 'HE',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                        TextSpan(
                            text: 'L',
                            style: TextStyle(fontStyle: FontStyle.italic),
                            children: [
                              TextSpan(text: 'LO'),
                              TextSpan(
                                  text: 'WO', style: TextStyle(color: Colors.red))
                            ]),
                        TextSpan(
                            text: 'RLD',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]))
            ],
          )),
    );
  }
}
