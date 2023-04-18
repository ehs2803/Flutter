import 'package:flutter/material.dart';
/*
이미지 출력시 Image 위젯을 사용.
Image 위젯으로 출력할 데이터는 ImageProvider로 가져와야함.

ImageProvider는 추상클래스이며 이 클래스를 상속받은 다음의 클래스를 이용.
- AssetImage : 애셋 이미지
- FileImage : 파일 이미지
- MemoryImage : 메모리의 데이터 이미지
- NetworkImage : 네트워크의 이미지
- ResizeImage : 이미지 크기 변경
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
            body: Column(
                children: [
                  Image(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),),
                  Container(
                    color: Colors.red,
                    child: Image.asset(
                      'images/big.jpeg',
                      width: 200,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  )
                ]
            )
        )
    );
  }
}
