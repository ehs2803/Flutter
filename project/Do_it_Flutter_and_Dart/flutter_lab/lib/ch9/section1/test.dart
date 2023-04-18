import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
/*
플러터의 애셋은 앱을 구성하는 데 활용할 자원을 의미.
애셋파일은 앱을 빌드할 때 앱 내부에 포함.
주로 아이콘 이미지, json, 폰트 파일 등을 애셋으로 활용.
애셋을 사용하려면 해당 파일을 프로젝트에 포함해야함.

애셋 파일을 보관할 디렉터리나 파일 이름에 특별한 규칙은 없음.
대신 앱에서 사용해야 하므로 플러터 프로젝트의 메인 환경 파일인 pubspec.yaml에 등록해야함.

애셋 변형이란 상황에 맞는 애셋을 적용하는 개념. 여러 상황에 대비해 여러 애셋 파일을 준비해 두면 프레임워크가 각 상황에 맞게 적용.
대부분 프레임워크에서 애셋 변형을 지원하지만, 플러터는 현재 이미지 해상도만 지원. 그러나 앞으로 언어나 화면 방향 등 다양한 변형을 지원할 계획
각 단말기의 해상도에 따라서 이미지 애셋 파일을 다르게 적용하게 하려면 하위 디렉터리 이름을 2.0x, 3.0x처럼 지어야함.
플러터가 이 디렉터리 이름을 보고 어느 단말기에서 어느 애셋을 적용할지 판단.
 */
void main() {
  runApp(MyApp());
}

/*
애셋은 AssetBundle 클래스의 loadString()이나 load() 함수로 이용.
함수의 매개변수에 애셋이 있는 경로를 전달.

loadString은 애셋의 데이터를 문자열로 불러오는 함수.
load는 반환 타입이 ByteData인 이미지나 바이너리 데이터를 불러오는 함수.

AssetBundle은 추상 클래스이므로 직접 생성해서 사용할 수 없고, rootBundle이나 DefaultAssetBundle을 이용해서 AssetBundle 타입의 객체를 사용해야함.
- rootBundle : 애플리케이션 전역에서 사용하는 AssetBundle
- DefaultAssetBundle : 위젯에서 사용하는 AssetBundle
 */
class MyApp extends StatelessWidget {

  Future<String> useRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }
  /*
  될 수 있으면 rootBundle 대신 DefaultAssetBundle을 사용하는 것이 좋다.
  DefaultAssetBundle은 위젯에서 사용하는 AssetBundled을 만들어 주므로 rootBundle보다 테스트가 쉽다.

  그러나 DefaultAssetBundle을 이용하려면 BuildContext 객체가 있어야 하며 이를 이용할 수 없다면 어쩔 수 없이 애셋을 rootBundle로 이용해야함.
   */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: Column(
            children: [
              Image.asset('images/icon.jpg'), // Image.asset 역시 내부적으로 AssertBundle을 이용
              Image.asset('images/icon/user.png'),
              // FutureBuilder는 비동기 데이터를 이용해 화면을 구성하는 위젯
              FutureBuilder(
                  future: useRootBundle(), // useRootBundle 함수 호출
                  builder: (context, snapshot){ // useRootBundle 함수의 결괏값이 snapshot에 전달
                    return Text('rootBundle : ${snapshot.data}'); // 이 값으로 화면 구성.
                  }
              ),
              FutureBuilder(
                  future: useDefaultAssetBundle(context),
                  builder: (context, snapshot){
                    return Text('DefaultAssetBundle : ${snapshot.data}');
                  }
              )
            ],
          )),
    );
  }
}
