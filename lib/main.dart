//有状态的Widget-demo

import 'package:flutter/material.dart';

main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  //首先，最外层要有一个MaterialApp;
  //然后，每个界面要用Scaffold包裹
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
//一个无状态的Widget
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),//标题
        elevation: 10.0,//阴影
        centerTitle: true,//标题是否居中
      ),
      body: CountPage(),
    );
  }
}

//有状态的Widget
class CountPage extends StatefulWidget {

  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text("$count"),
        ElevatedButton(onPressed: (){
          setState(() {
            count++;
          });
        }, child: Text("点击"))
      ],

    );
  }
}




