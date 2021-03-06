import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'dart:async';
// import 'dart:io';

// import 'dart:ui';
// import 'dart:io';

import 'package:pingwest/net/message/article/ArticleDetailMessage.dart';

class ArticleDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ArticleDetailState();
  }
}

class ArticleDetailState extends State<ArticleDetail> {
//  //todo 获取文章详情接口数据
//  void getArticleData() async {
//      File('mock.json')
//     .readAsString()
//     .then((fileContents) => json.decode(fileContents))
//     .then((jsonData) {
//         // do whatever you want with the data
//         print('=========>');
//         print(jsonData);
//     });
//   }

  final ArticleDetailMessage article = ArticleDetailMessage(
    '那家改名“快狗打车”的拉货公司，终于出来释疑了',
    '寒冰',
    'https:\/\/cdn.pingwest.com\/wp-content\/uploads\/2018\/05\/timg-2.jpeg',
    '9月12日',
    "在由 58 速运更名为“快狗打车”将近 20 天后，这家公司终于正式向外界发声了。你可能还记得，今年七夕，“58 速运”改名“快狗打车”的消息引起了人们的讨论：一家货运公司为什么要改成“快狗打车”这样一个所谓“定主谓宾齐全”的名字？在一条视频报道里，司机语气激动地表示“给司机弄成狗了还是给客户弄成狗了”，并在车上张贴了“拒绝快狗车贴”、“我们要尊严，我们司机不是���，客户更不是狗”的横幅；有些用户也认为自己被冒犯。为什么要选择“快狗打车”这个名字？快狗打车App创始人兼董事长陈小华解释，“更名我们是认真的，不是头脑发热。”新品牌名关乎品牌全新战略定位，更名筹备期长达半年之久，召开了 100 次以上专题讨论会议，最终“快狗打车App”是从数百个品牌名称中挑选出来的。这次改名的操盘手特劳特（中国）合伙人陈逸伦解释了背后的更名逻辑与战略定位。“快狗打车App”是一个城市货运平台，它承担的功能是解决城市货物运输、城市货物出行。要让用户快速认知和接受这种价值，就必须要借助用户心智中对“打车”的已有认知，将“打车”重新定义为两种：拉人和拉货。陈逸伦认为，在 58 原有的影响下，很难做出新的品牌。要面向广大用户建立定位，就要更名。为了解决“初认知挑战”，这个名字需要让消费者听一次就能记住。而“快狗”二字来自 58 速运去年并购的一家东南亚短途速运平台快狗速运（GOGOVAN）。快狗打车App创始人兼董事长陈小华重新定义业务边界的快狗打车不再局限于“货运”概念，而成为一个“拉货、搬家、运东西”的打车平台。陈逸伦说，如果沿用“58速运”的“速运”，涵盖不了“搬家”的业务；“快狗拉货”这个名字会抹平互联网基因，用户会认为这是一家普通的搬货公司；“快狗货的”对消费者而言较难理解；如果新名字要跟现有的认知链接，又能体现互联网、高科技，那非“打车”莫属。“美团打车拉人，快狗打车，为你拉货。”在此之前，特劳特曾经操盘了赶集好车改名为瓜子二手车。这次在收到快狗打车的咨询费用后，它又把资金转投了回去，成了快狗打车的股东。快狗打车的品牌改名涉及几百万注册司机、所有司机的车贴、衣服、胶带、喷漆等物料，以及网站、APP等界面，再加上顾问咨询公司的费用，“这至少是 5 到 10 个亿的决定”，陈小华说。那这是一次成功的改名吗？陈小华的答案是肯定的。他透露改名后新增用户是以前的 3 倍，多 1 亿人知道了快狗打车品牌，吸引了上百家媒体关注，各类排行榜飙升，“这次改名至少帮我们省了1 亿 - 2 亿广告费。”更名背后的升级快狗打车的前身 58 速运成立于 2014 年，最早靠着 O2O 的地推打法从批发市场起家，如今业务覆盖 6 个国家及地区，拥有 800 万用户与百万级的注册司机，成为了香港、东南亚最大的短途货运平台。更名为“快狗打车 App”之后，企业定位也转为“拉货搬家运东西”，服务场景包括上门搬家、建材运送、食品配送、电器家具运输、展览物资运送等。目前 B 端仍然是主要订单来源，但陈小华透露，9 月下旬，快狗打车会上线像滴滴专车、快车一样更细分的服务，推出面向个人、商家、搬家的不同场景。未来还会有专门运宠物、做冷链的服务。他甚至没有否认以后会涉及“个人打车”业务，表示在拿到网约车牌照资质后，在暴雨等特殊天气快狗打车也会拉人，但前提肯定是“安全的”。业务复杂化意味着快狗需要给重新设计流程，提供标准化服务。天眼查显示，今年 7 月，快狗打车完成 2.5 亿美元的 A 轮融资。值得注意的是，菜鸟网络出现在了快狗打车的 A 轮投资方名单上。再加上 58到家时期的投资，阿里系已经成了快狗打车除原始股东以外，最大的外部机构股东。快狗打车未来两个季度将在 12 个城市投入 10000 辆新能源货车，菜鸟物流将会和快狗打车在新能源运力方面合作，打造中国最大的新能源货运网络。这样看来，在阿里的新零售战略和构建大物流体系的布局中，快狗打车需要承担的是短途物流基础设施的作用。为了提高效率，平台化整合闲散运力，快狗打车还自主研发了 Sopas 智能调度平台和“互联网+大数据”的智能系统。来源：Box ox moving据 DCCI 发布的《2017 年中国同城 B2B 智能配送行业研究》显示，我国同城货运市场规模逐年增长，2017 年底货运市场总额将达到 1.5 万亿元。近期同城货运领域融资消息不断，6 月，唯捷城配完成 B 轮 1.16 亿元人民币的融资；8 月，闪送完成 6000 万美元融资；去年货拉拉连续完成了 B、C 轮融资，总融资金额合计达到 1.3 亿美元。陈小华认为，货运出行的规模不会小于滴滴专车。同城速运是一个进入门槛较低、同质化竞争较激烈的行业，谁能抢占规模化先机谁就能吃到蛋糕。陈小华认为快狗打车的优势是响应时间快、更便宜，更安全。但他又表示在相对高频的商家端会提供补贴，但在刚刚进入的 C 端市场不会用“价格补贴”获客，因为“C 端用户相对低频，补贴没有意义”——但如果不补贴价格，那快狗打车的优势如何体现呢？陈小华并没有正面回应对投入和回报的预期，但表示目前快狗打车在北京的订单量是货拉拉的 3 倍，客单价是滴滴的 3 倍，将来快狗打车的交易量起码会超过滴滴专车。他看起来做好了亏损的准备：目前以司机和客户为中心，先把规模做大；“我们在品牌广告投入远大于任何互联网公司”；“这个领域发展一年也得亏两三亿美金。”",
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // this.getArticleData();
  }

  final EdgeInsetsGeometry containerPadding  = EdgeInsets.all(15.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white70,
        // iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        // title: Text(article.author),
        textTheme: TextTheme(),
        
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          
          Container(
            padding: containerPadding,
            child: Text(article.title,
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w700)),
          ),
          Container(
            padding: containerPadding,
            child:  Row(children: [
              Container(
                width: 35.0,
                height: 35.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(article.authorIcon),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 6.0),
                child: Text(
                  article.author,
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
                  article.timeStr,
                  style: TextStyle(fontSize: 16.0, color: Colors.grey),
                ),
              ),
            ]),
          ),
          Container(
            padding:containerPadding,
            child: Text(article.content,
            style:TextStyle(fontSize:18.0)),
          )

          // Image.network('src')
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.thumb_up),
            title: new Text('点赞')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.star),
            title: new Text('收藏')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text('评论')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.share),
            title: new Text('分享')
          ),
        ],

        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.orangeAccent,
        currentIndex: 0,
        onTap: (int index) {
          print('xxx $index');
        },
      ),

    );
  }
}
