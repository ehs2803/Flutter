main(){
  String data1 = 'hello';
  String data2 = "world";
  String data3 = '''
    hello
    world
  ''';
  String data4 = """
    hello
    world
  """;
  print(data3);
  print(data4);
  // 삼중 따옴표를 사용하면 문자열에서 엔터나 탭 등이 그대로 반영
}