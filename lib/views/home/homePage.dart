import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'homeContainer.dart';
import 'homeList.dart';
import '../../test.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeModuleState();
  }
}

class _HomeModuleState extends State<HomePage> {
  int _currentIndex = 0;
  var widgets = [
    HomeContainer(),
    HomeList(),
    Center(
      child: Text('404',style: TextStyle(fontSize: 100),),
    )
  ];
  var titles = [
    "DEMO1",
    "DEMO2",
    "404",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DEMO1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:Colors.white,
          elevation:4.0,
          title: Text(titles[_currentIndex],style: TextStyle(fontSize: 16.0,color: Colors.black)),
        ),
        body: widgets[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            if(_currentIndex == index){
              return;
            }
            setState(() {
              _currentIndex = index;
            });

          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 18.0),
                title: Text('广场', style: TextStyle(fontSize: 12.0))),
            BottomNavigationBarItem(
                icon: Icon(Icons.book, size: 18.0),
                title: Text('预约单', style: TextStyle(fontSize: 12.0))),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 18.0),
                title: Text('我的', style: TextStyle(fontSize: 12.0))),
          ],
        ),
      ),
    );
  }
}
