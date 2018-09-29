import 'package:pingwest/net/message/Message.dart';

/// 我的消息体
class MyMessage implements Message{
  /// id
  final int id; 

  /// 类型
  final int type;

  /// 昵称
  final String nickname;

  /// 标题
  final String photo;

  /// 邮箱
  final String email;

  /// 我的消息体构造函数
  MyMessage(
    this.id,
    this.type,
    this.nickname,
    this.email,
    this.photo
  );
  
}