import 'package:flutter/material.dart';
import 'package:threat_around/config/bottomNavBar.dart';
import 'package:threat_around/screen/ThreatPage.dart';
import 'package:threat_around/screen/MessagePage.dart';
import 'package:threat_around/screen/UploadPage.dart';
import 'package:threat_around/screen/NotificationPage.dart';
import 'package:threat_around/screen/ProfilePage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        backgroundColor: Colors.lightBlue,
        primaryColor: Colors.white,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            // color: Colors.green,
            fontSize: 16.0
          )
        )
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;
  int _index = 0;
  Text _title;

  _onTap(int index) {
    setState(() {
      _index = index;
      _title = Config.navigationBarItems[_index].title;
      currentTabIndex = index;
    });
  }

   List<Widget> tabs = [
    ThreatPage(),
    MessagePage(),
    UploadPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    _title = Config.navigationBarItems[_index].title;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            title: _title,
            // centerTitle: true,
          )
        ),
      // appBar: AppBar(
      //   title: _title,
      // ),
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: Config.navigationBar.type,
        fixedColor: Config.navigationBar.fixedColor,
        items: Config.navigationBar.items,
        onTap: _onTap,
      ),
    );
  }
}