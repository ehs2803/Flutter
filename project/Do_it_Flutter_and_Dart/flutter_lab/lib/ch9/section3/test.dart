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

/*
애셋 이미지를 AssetImage로 가져와 Image 위젯으로 출력하는 코드
Image(image: AssetImage('images/icon/user.png'),),

ResizeImage는 이미지를 원하는 크기로 변경
Image(image: ResizeImage(AssetImage('images/icon/user.png'), width: 70, height: 80)),

FileImage는 단말기의 이미지를 파일 경로로 읽어 올 때 사용. 대표적으로 갤러리 앱과 연동해 사용자가 선택한 이미지를 가져올때 사용.
NetworkImage를 이용한다면 이미지의 URL을 NetworkImage에 지정만 하면 됨.
Image(image: NetworkImage('url'),),

이미지를 이용하라면 ImageProvider로 가져와 Image위젯으로 출력.

Image는 두 기능을 모두 제공하는 다음의 생성자를 제공. 이를 이용하면 이미지를 가져와 출력할 수 있음.
- Image.asset() : AssetImage 이용
- Image.network() : NetworkImage 이용
- Image.file() : FileImage 이용
- Image.memory() : MemoryImage 이용
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
                      fit: BoxFit.fill, // 이미지와 Image위젯 크기가 다를 때 사용...
                      /*
                        BoxFit.fill : 높이와 너비를 가득 채워 이미지 출력. 비율이 변경될 수 있음.
                        BoxFit.contain : 이미지가 잘리거나 비율 변화 없이 가능한 한 크게 출력
                        BoxFit.cover : 비율 변화 없이 위젯에 꽉 채워 출력. 이미지가 잘릴 수 있음.
                        BoxFit.fitWidth : 너비를 채워 출력. 이미지가 짤릴 수 있음.
                        BoxFit.fitHeight : 높이를 채워 출력. 이미지가 짤릴 수 있음.
                        Boxfit.none : 이미지 원본을 그대로 출력. 이미지가 잘릴 수 있음.
                        Boxfit.scaleDown : 이미지 전체가 나오도록 크기 조절 후 출력.
                       */
                    ),
                  )
                ]
            )
        )
    );
  }
}
