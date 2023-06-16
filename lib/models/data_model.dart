import 'package:news_app/models/article_model.dart';

class Model {
  late String status;
  late int totalResults;
  late List<Article> articles = [];

  Model.fromJson(Map<String,dynamic> json){
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <Article>[];
      json['articles'].forEach((v) {
        articles.add(Article.fromJson(v));
      });
    }

  }
}