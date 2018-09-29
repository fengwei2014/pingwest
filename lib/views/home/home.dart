import 'package:flutter/material.dart';
import 'package:pingwest/components/MessageCard.dart';
import 'package:pingwest/net/message/home/ArticleMessage.dart';
import 'package:pingwest/views/search/search.dart';

class Home extends StatelessWidget {
  /// article mock message
  final List<ArticleMessage> items = [
    ArticleMessage(
      '寒冰',
      'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/05\/timg-2.jpeg?imageView2\/1\/w\/160\/h\/160\/q\/100',
      '9月12日',
      '那家改名“快狗打车”的拉货公司，终于出来释疑了',
      ['公司'],
      'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/FsIKL3JcS4CGMcoivqcM36lNuMsR.png?imageView2\/1\/w\/280\/h\/210\/q\/100'
    ),
    ArticleMessage(
        '邢逸帆',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/03\/WechatIMG518.jpeg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '李飞飞要回斯坦福教书了，过去两年，她给Google留下了重要的技术资产',
        ['人工智能'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/Fr7od5XIRB_9pL_jC00kiX2OsIe1.jpg?imageView2\/1\/w\/670\/h\/377\/q\/100'),
    ArticleMessage(
        '界面',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/06\/jiemianlogo.jpeg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        'ofo的最后时刻',
        ['公司'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/FnOfUdqGw7lixhF5OQLF06juFL4y.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
    ArticleMessage(
        'curator',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/04\/curator-1.jpg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '已经确认！李飞飞年底将从Google回归斯坦福',
        ['公司'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/FuALbG7b2E58ZCUdBFB_R8KNAecN.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
    ArticleMessage(
        '品牌',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2016\/10\/logo.png?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '迅雷链携手来电科技，区块链落地共享便民服务领域',
        ['人工智能'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/10\/FrFnzQ1pjKMJZPsGelMmef8qR2jq.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
    ArticleMessage(
        '邢逸帆',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/03\/WechatIMG518.jpeg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '李飞飞要回斯坦福教书了，过去两年，她给Google留下了重要的技术资产',
        ['人工智能'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/Fr7od5XIRB_9pL_jC00kiX2OsIe1.jpg?imageView2\/1\/w\/670\/h\/377\/q\/100'),
    ArticleMessage(
        '界面',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/06\/jiemianlogo.jpeg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        'ofo的最后时刻',
        ['公司'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/FnOfUdqGw7lixhF5OQLF06juFL4y.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
    ArticleMessage(
        'curator',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/04\/curator-1.jpg?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '已经确认！李飞飞年底将从Google回归斯坦福',
        ['公司'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/11\/FuALbG7b2E58ZCUdBFB_R8KNAecN.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
    ArticleMessage(
        '品牌',
        'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2016\/10\/logo.png?imageView2\/1\/w\/160\/h\/160\/q\/100',
        '一天前',
        '迅雷链携手来电科技，区块链落地共享便民服务领域',
        ['人工智能'],
        'https:\/\/cdn.pingwest.com\/portal\/2018\/09\/10\/FrFnzQ1pjKMJZPsGelMmef8qR2jq.jpg?imageView2\/1\/w\/280\/h\/210\/q\/100'),
  ];

  @override
  Widget build(BuildContext context) {
    final subscribeWidget = ListView.builder(
      // Let the ListView know how many items it needs to build
      itemCount: items.length,
      // Provide a builder function. This is where the magic happens! We'll
      // convert each item into a Widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = items[index];

        return MessageCard(
          title: item.title,
          timeStr: item.timeStr,
          name: item.name,
          headerUrl: item.headerUrl,
          articleImage: item.articleImage,
        );
      },
    );

    Widget modalHeaderSction = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DefaultTextStyle(
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.grey),
            child: Text('取消'),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text(
                  '订阅管理',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          DefaultTextStyle(
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.grey),
            child: Text('完成'),
          ),
        ],
      ),
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search btn in home page click');

              //navgate to new page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
              );
            },
          ),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.border_all),
                tooltip: 'Add Alarm',
                onPressed: () {
                  // do nothing
                  showModalBottomSheet<Null>(
                      context: context,
                      builder: (BuildContext context) => Container(
                          height: 300.0,
                          child: Column(children: [
                            modalHeaderSction,
                            // modalContentSection
                          ])));
                }),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: '订阅'),
              Tab(text: '推荐'),
              Tab(text: '发现'),
            ],
          ),

          title: Text('Ping West'),
        ),
        body: TabBarView(
          children: [
            subscribeWidget,
            // Icon(Icons.directions_car),
            // Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            subscribeWidget
          ],
        ),
      ),
    );
  }
}
