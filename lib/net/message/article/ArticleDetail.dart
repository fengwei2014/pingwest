import 'package:pingwest/net/message/Message.dart';

/// 首页文章列表消息体
/// 
class Article implements Message {
  final int userId;
  final int id;
  final String title;
  final String body;

  Article({this.userId, this.id, this.title, this.body});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
