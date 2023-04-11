class Image{
  late String url;
  static Map<String, Image> _cache = <String, Image>{};
  Image._instance(this.url);
  factory Image(String url){
    if(_cache[url]==null){
      var obj = Image._instance(url);
      _cache[url]=obj;
    }
    return _cache[url]!; // 캐시에서 식별자에 해당하는 객체 반환
  }
}

main(){
  var image1 = Image('a.jpg');
  var image2 = Image('a.jpg');
  print('image1 == image2 : ${image1==image2}');
}
// image1 == image2 : true