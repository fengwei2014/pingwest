import 'package:flutter/material.dart';
import 'package:pingwest/views/home/home.dart';
import 'package:pingwest/views/live/live.dart';
import 'package:pingwest/views/my/my.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new MainPageWidget()
    );
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State createState(){
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget> {
  int page = 0;
  PageController pageController;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      pageController = new PageController(initialPage:this.page);
    }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new PageView(
        children: [
          new Home(),
          new Live(),
          new My()
        ],
        controller: pageController,
        onPageChanged: onPageChanged
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('首页')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.live_tv),
            title: new Text('live')
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('我的')
          ),
        ],

        type: BottomNavigationBarType.fixed,
        // fixedColor: Colors.orangeAccent,
        currentIndex: page,
        onTap: onTap,
      ),
    );
  }

  void onTap (int index) {
    pageController.animateToPage(index,
      duration:new Duration(milliseconds:300),
      curve: Curves.ease
    );
  }

  void onPageChanged(int page) {
    setState((){
      this.page = page;
    });
  }
}