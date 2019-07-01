
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tiktok/app/MyApp.dart';

class Splash extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Todo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashPage(), // 闪屏页
      routes: <String, WidgetBuilder>{ // 路由
        '/HomePage': (BuildContext context) => MyApp()
      },
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new Image.asset("imgs/splash.jpg");
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

// 倒计时
  void countDown() {
    var _duration = new Duration(seconds: 3);
    new Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }
}
