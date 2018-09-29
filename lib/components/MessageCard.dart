import 'package:flutter/material.dart';

import 'package:pingwest/views/article/detail.dart';

import 'dart:ui';

///自定义首页消息卡片
/// Creates a message card for home page
///
/// The [delegate] argument must not be null.
class MessageCard extends StatelessWidget {
  const MessageCard({
    Key key,
    this.headerUrl,
    this.name,
    this.timeStr,
    this.title,
    this.labels,
    this.articleImage,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
     final double screenWidth = (window.physicalSize.width/window.devicePixelRatio);
    
    return GestureDetector(
      // When the child is tapped, show a snackbar
      onTap: () {
        // final snackBar = SnackBar(content: Text(title));
        // Scaffold.of(context).showSnackBar(snackBar);

        //todo navigator 导航出去，并且带参数
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ArticleDetail()),
        // );
        Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
                    return new ArticleDetail();
                  }));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 200.0,
        child: Column(children: [
          Row(children: [
            Container(
              width: 35.0,
              height: 35.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(headerUrl),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(
                name,
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(
                '*',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 6.0),
              child: Text(
                timeStr,
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ),
          ]),
          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: screenWidth - 160.0,
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    title,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    maxLines: 3,
                  ),
                ),
                Container(
                    color: Colors.grey[200],
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 2.0),
                    padding: EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
                    child: Text(
                      ' # ' + '公司',
                      style: TextStyle(color: Colors.orange),
                    ))
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    child: Image.network(
                  articleImage,
                  width: 130.0,
                  height: 120.0,
                ))
              ],
            ),
          ])
        ]),
        decoration: const BoxDecoration(
          border: const Border(
            bottom:
                const BorderSide(width: 5.0, color: const Color(0xFFFFEEEEEE)),
          ),
        ),
      ),
    );
  }
}
