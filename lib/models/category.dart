import 'dart:convert';

class Category {
  int id;
  String title;
  String imgUrl;
  String url;
  List<UrlList> urlList;

  Category({required this.id, required this.title, required this.imgUrl, required this.url, required this.urlList});

  factory Category.fromJson(Map<String, dynamic> json) {
    var list = json['urlList'] as List;
    // ignore: unused_local_variable
    List<UrlList> dataUrlList =
        list.map((item) => UrlList.fromJson(item)).toList();
    return Category(
      id: json['id'],
      title: json['title'],
      imgUrl: json['imgUrl'],
      url: json['url'],
      urlList: dataUrlList,
    );
  }
}

class UrlList {
  int id;
  String name;
  String url;

  UrlList({required this.id, required this.name, required this.url});

  factory UrlList.fromJson(Map<String, dynamic> json) {
    return UrlList(id: json['id'], name: json['name'], url: json['url']);
  }
}

List<Category> parseCategory(dynamic json) {
  if (json == null) {
    return <Category>[];
  }
  List parsed = jsonDecode(json);
  List<Category> data = parsed.map((json) => Category.fromJson(json)).toList();
  return data;
}
