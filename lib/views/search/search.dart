import 'package:flutter/material.dart';

class Search extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return SearchState();
    }
}

class SearchState extends State<Search>{

  final TextEditingController _controller = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),
        onPressed: () {
          //路由回退
          // Navigator.pop(context);
          //路由带参数传递
          Navigator.of(context).pop('这个是要返回给上一个页面的数据');
        },),
        title: Text("搜索"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: () {
              //TODO search funciton
              print('Search btn click in search page');
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('What you typed'),
                    content: Text(_controller.text),
                  );
                },
              );
            },
          )
        ],
      ),
      body: Column(
        children:[
          TextField(
            controller: _controller,
            decoration: new InputDecoration(
              hintText: "搜点什么吧",
            ),
            
          ),
        ]
      )
    );
  }
}
