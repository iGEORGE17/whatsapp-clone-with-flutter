

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => _buildChatItem(),
      separatorBuilder: (context, index) =>
          Divider(
            indent: 60.0,
          ),
      itemCount: 15,
    );
  }

    //the chat widget
    _buildChatItem(){
      return Theme(
        data: ThemeData(),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepOrange,
            radius: 32.0,
            child: Icon(
              Icons.person,
              color: Colors.black,
              size: 38,
            ),
          ),
          title: Text("User 1",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          subtitle: Text("+2348034587665"),
          trailing: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "3:30 pm",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  radius: 11.0,
                ),
              ],
            ),
          ),
        ),
      );
    }
  }


