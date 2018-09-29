import 'package:pingwest/net/message/Message.dart';

/// 首页文章列表消息体
///
class ArticleMessage implements Message {
  /// 头像
  final String headerUrl;

  /// 名称
  final String name;

  /// 时间标志
  final String timeStr;

  /// 标题
  final String title;

  /// 标签
  final List<String> labels;

  /// 文章图片
  final String articleImage;

  /// 首页文章列表消息体构造函数
  ArticleMessage(this.name, this.headerUrl, this.timeStr, this.title,
      this.labels, this.articleImage);
}
