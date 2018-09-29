import 'package:flutter/material.dart';

import 'dart:ui';

///自定义单条组件
/// Creates a flow cell
///
/// 创建一个单条组件，对于列表结构的可复用
///
/// The [text] argument must not be null.
class Cell extends StatelessWidget {
  const Cell({
    Key key,
    this.icon: Icons.settings,
    this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {

    final double screenWidth = (window.physicalSize.width/window.devicePixelRatio);

    return GestureDetector(
      // When the child is tapped, show a snackbar
      onTap: () {
        final snackBar = SnackBar(content: Text(text));
        Scaffold.of(context).showSnackBar(snackBar);

        //todo navigator 导航出去，并且带参数
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => SecondScreen()),
        // );
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 50.0,
        width: screenWidth,
        child: new Row(children: [
          new Chip(
            avatar: new Icon(icon, color: Colors.blueAccent),
            label: new Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),
            padding: EdgeInsets.all(2.0),
            backgroundColor: Colors.white10,
          )
        ]),
        decoration: const BoxDecoration(
          border: const Border(
            bottom:
                const BorderSide(width: 1.0, color: const Color(0xFFFFEEEEEE)),
          ),
        ),
      ),
    );
  }
}
