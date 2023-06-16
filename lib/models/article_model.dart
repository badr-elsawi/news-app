class Article {
  late String? title;
  late String? description;
  late String? url;
  late var urlToImage;
  late String? publishedAt;

  Article.fromJson(Map<String,dynamic> json){
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
  }
}