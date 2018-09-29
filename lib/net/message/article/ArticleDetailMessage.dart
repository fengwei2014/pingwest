import 'package:pingwest/net/message/Message.dart';

/// 文章详情消息体
///
class ArticleDetailMessage implements Message {
  /// 头像
  final String authorIcon;

  /// 名称
  final String author;

  /// 时间标志
  final String timeStr;

  /// 标题
  final String title;

  /// 标签
  final String content;

  /// 文章详情消息体构造函数
  ArticleDetailMessage(this.title, this.author, this.authorIcon, this.timeStr,
      this.content);
}
