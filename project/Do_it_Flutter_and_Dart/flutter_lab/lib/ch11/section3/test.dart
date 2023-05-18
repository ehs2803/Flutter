import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/*
사용자에게 데이터를 입력받는 화면을 만들 때 폼 위젯을 이용.
폼 자체는 위젯이지만 특정 화면을 제공하지 않음.
폼을 이용하면 사용자가 입력한 데이터의 유효성 검증, 데이터 관리 등의 도움을 받을 수 있음.

사용자가 입력한 데이터는 유효한지 검증해야함.
만약 유효하지 않은 데이터를 입력했으면 오류 메시지를 출력해 사용자에게 알린다.
물론 폼을 사용하지 않고도 이런 기능을 구현 가능하지만 폼을 사용하면 좀 더 쉽게 구현이 가능.

폼을 이용할 때는 FormField<T> 형태로 사용자 입력 위젯을 폼 하위에 추가해서 연동해야함.

폼에 키값 대입하기.
폼을 사용한다면 꼭 Form 위젯에 key값을 대입해 주어야함.
폼 하위에 추가한 위젯들의 데이터 유효성 검증과 저장이 필요할 때 key값으로 Form 객체를 얻어서 FormState객체의 함수를 호출해 유효성 검증(validate())이나 입력 데이터를 저장(save())함.

유효성 검증과 데이터 저장하기
validator와 onSaved 속성에 설정한 함수가 호출되는 시점이 중요한데, 두 함수 모두 FormState가 제공하는 같은 이름의 함수가 실행될 때 호출.


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
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<TestScreen> {

  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Form Test'),
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'FirstName'
                ),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'Please enter first name';
                  }
                  return null;
                },
                onSaved: (String? value){
                  firstName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'LastName'
                ),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'Please enter last name';
                  }
                  return null;
                },
                onSaved: (String? value){
                  lastName = value;
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: (){
              if(_formKey.currentState?.validate() ?? false) {
                _formKey.currentState?.save();
                print('firstName: $firstName, lastName : $lastName');
              }
            },
            child: Text('submit')
        ),
      ],
    );
  }
}