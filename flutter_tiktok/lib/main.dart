import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TikTok'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
int _currentIndex  = 0;

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: Center(

      ),
    );
  }
}

Widget _buildBottomNavigationBar(){
  return Container(
    color: Colors.transparent,
    child: SafeArea(
      child: SizedBox(
        height: 54.0,
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(),
          margin: EdgeInsets.all(0.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildBottomTextItem(title: '首页',index: 0),
              _buildBottomTextItem(title: '关注',index: 1),
              _buildBottomIconItem(icon: Icons.add,index: 2),
              _buildBottomTextItem(title: '消息',index: 3),
              _buildBottomTextItem(title: '我',index: 4),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildBottomTextItem({String title,int index}){

  Color _colors = index == _currentIndex ? Colors.blue : Colors.grey;

  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Text(
          title,
          style: TextStyle(color: _colors,fontSize: 12.0),
        ),
      ],

    ),
  );
}

Widget _buildBottomIconItem({IconData icon, int index}){

  Color _colors = index == _currentIndex ? Colors.blue : Colors.grey;

  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,color: _colors,)
      ],
    ),
  );
}