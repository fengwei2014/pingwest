import 'package:flutter/material.dart';
import 'package:pingwest/mock/my_mock.dart';
import 'package:pingwest/components/Cell.dart';

import 'dart:ui';

class My extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry tipsMargin =
        EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0);
    final double screenWidth = (window.physicalSize.width/window.devicePixelRatio);
    ///提示相关小图标
    Widget tipSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: <Widget>[
            Container(
              margin: tipsMargin,
              child: Text('关注 ' + myInfoMock['follow_count'].toString()),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              margin: tipsMargin,
              child: Text('评论 ' + myInfoMock['comment_count'].toString()),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              margin: tipsMargin,
              child: Text('收藏 ' + myInfoMock['collection_count'].toString()),
            )
          ],
        )
      ]),
    );

    //header section
    Widget headerSection = Container(
        padding: const EdgeInsets.all(10.0),
        width: screenWidth,
        decoration: BoxDecoration(
          // color: Colors.orangeAccent,
        ),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/header_icon.jpeg'),
                  radius: 50.0,
                ),
              ],
            ),
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(1.0, 0.0, 0.0, 0.0),
                child: Text(
                  myInfoMock['nickname'],
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Container(
                child: tipSection,
              )
            ]),
          ],
        ));

    // Widget settingSection = Container(
    //   padding: EdgeInsets.all(20.0),
    //   child: Row(
    //     children:[
    //       ListView.builder(
    //         itemBuilder:(context,i) {
    //           return Text('data  $i');
    //         }
    //       )
    //     ]
    //   ),

    // );

    Widget settingSection = Container(
      child: Column(children: [
        Cell(text: '我的课程', icon: Icons.video_library),
        Cell(text: '交易记录', icon: Icons.library_books),
        Cell(text: '优惠礼券', icon: Icons.confirmation_number),
        Cell(text: '常规设置', icon: Icons.settings),
        Cell(text: '推送通知', icon: Icons.alarm),
        Cell(text: '意见反馈', icon: Icons.edit),
      ]),
    );

    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.orangeAccent,
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            headerSection,
          ]),
          Row(children: <Widget>[settingSection])
        ]));
  }
}
