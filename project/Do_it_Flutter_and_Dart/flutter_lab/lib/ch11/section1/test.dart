import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
텍스트 필드는 사용자에게 글을 입력받는 위젯.
입력된 글을 출력해야 하므로 Text위젯에서 살펴본 TextAlign, TextStyle 등으로 출력할 문자열을 정렬하거나 스타일을 지정가능.

입력된 데이터 얻기 - TextEdigingController
TextEditingController를 이용하면 텍스트 필드에 입력된 데이터 획득, 변경 이벤트 감지 등의 작업을 할 수 있음.
TextEdigingController 객체를 TextFiled의 controller 속성에 지정하면 텍스트 필드에 입력된 데이터가 자동으로 TextEdigingController에 저장.
그러므로 텍스트 필드에 입력된 데이터를 가져오려면 TextEditingController의 text속성을 이용하면 됨.

꾸미기 - InputDecoration
텍스트 필드에 라벨이나 테두리를 설정하는 등 다양하게 꾸미려면 decoration 속성에 InputDecoration 객체를 지정.
InputDecoration의 속성은 다음과 같음...
- labelText : 라벨 문자열
- helperText : 아래쪽에 출력되는 설명 문자열
- hintText : 입력 상자 안쪽에 출력되었다가 글 입력 시 사라지는 문자열
- errorText : 아래쪽에 출력되는 오류 문자열. 사용자 입력 오류가 발생할 때 출력할 문자열. 테두리는 자동으로 빨간색. helperText에 지정한 문자열은 출력X
- prefixIcon : 입력 앞 부분에 고정으로 출력되는 아이콘 이미지
- counterText : 아래쪽에 출력되는 문자열
- border : 테두리 지정. OutlineInputBorder, UnderlineInputBoarder 중 하나 이용

액션버튼 - textInputAction
TextFiled에 글을 입력하려고 포커스를 주면 화면 아래쪽에서 소프트 키보드가 자동으로 올라오며 사용자는 이 키보드로 글을 입력.
소프트키보드는 플랫폼에서 제공하며 사용자가 키를 눌렀을 때 텍스트 필드에 글이 입력되지만 앱에서 키를 직접 제어할 수 없음.
그런데 소프트키보드에서 오른쪽 아래에 있는 액션버튼만은 앱에서 제어 가능.
즉, 액션 버튼을 엔터, 전송, 포커스 이동 등으로 동작하도록 설정가능.
textInputAction 속성에 다음의 상수를 대입해 설정.
- TextInputAction.next : 다음 위젯으로 포커스 이동
- TextInputAction.previous : 이전 위젯으로 포커스 이동
- TextInputAction.search : 검색 버튼
- TextInputAction.send : 전송 버튼

키보드 유형 - keyboardType
소프트 키보드가 나타날 때 키보드 유형을 설정할 수 있음.
기본은 문자열을 입력하는 키보드로 나타나지만, 숫자만 입력해야 하는 곳에서는 숫자 키보드가 나타나게 할 수 있음.
이처럼 사용자가 텍스트 필드에 데이터를 입력할 때 어떤 키보드 유형으로 보일지는 keyboardType에 다음의 상수로 설정.
- TextInputType.number : 숫자 입력
- TextInputType.text : 문자 입력
- TextInputType.phone : 전화번호 입력
- TextInputType.emailAddress : 이메일 주소 입력
- TextInputType.url : URL 입력

텍스트 감추기 - obscureText
사용자가 입력하는 글이 텍스트 필드에 ****처럼 보여야 할 때가 있음.
보통 비밀번호처럼 보안과 관련된 텍스트를 감춰야할 때.
이 기능은 obscureText 속성을 true로 설정하면됨.

여러 줄 입력 - maxLines, minLines
사용자 입력은 한 줄이 기본. 여러 줄을 입력해야 할 수도 있음.
이때 maxLines, minLines를 사용.
 */

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

  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print("_printValue(): ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build....");
    return Column(
      children: [
        Text('TextField Test'),
        TextField(
          style: TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Data',
            prefixIcon: Icon(Icons.input),
            border: OutlineInputBorder(),
            hintText: "Hint Text",
            helperText: "데이터를 입력하세요.",
            counterText: "$textCounter characters",
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        ),
      ],
    );
  }
}