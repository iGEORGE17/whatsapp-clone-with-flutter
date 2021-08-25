// import 'dart:html';
import 'package:flutter/material.dart';
import 'camera.dart';
import 'calls.dart';
import 'chat.dart';
import 'status.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  var width;

  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }  
  
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton(itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("login")),
              PopupMenuItem(child: Text("logout")),
              PopupMenuItem(child: Text("Settings")),
            ];
          }),
        ],
        bottom: PreferredSize(
          child: TabBar(tabs: [
            Container(
              width: 30,
              child: Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            Container(
              width: width * 0.2,
              child: Row(
                children: <Widget>[
              Tab(
                text: "CHATS",
              ),
                  SizedBox(width: 5,),
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text("5",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Theme.of(context).primaryColor
                        ),
                      ),
                      radius: 10.0,
                    ),
                  ),
            ],
              ),
            ),
            Container(
              width: width * 0.2,
              child: Row(
                children: <Widget>[
                  Tab(
                    text: "STATUS",
                  ),
                  SizedBox(width: 5,),
                  Tab(
                    child: Icon(Icons.brightness_1, size: 9,),
                  ),
                ],
              ),
            ),
            Container(
              width: width * 0.2,
              child: Tab(
                text: "CALLS",
              ),
            ),
          ],
            controller: _tabController,
            isScrollable: true,
          ),
          preferredSize: Size.fromHeight(60.0),
        ),
      ),
      body: TabBarView(children: [
        CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen(),
      ],
      controller: _tabController,
      ),
    );
  }
}
