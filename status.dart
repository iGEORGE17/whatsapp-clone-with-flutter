import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildStatus("My Status", "Today, 8:30AM"),
          _buildText("Recent updates"),
          _buildStatus("Florence", "3 minutes ago"),
          _buildStatus("Debbie", "4 minutes ago"),
          _buildStatus("Thelma", "5 minutes ago"),
          _buildStatus("Lily", "7 minutes ago"),
          _buildText("Viewed Updates"),
          _buildStatus("Willy", "9 minutes ago"),
          _buildStatus("Mom", "10 minutes ago"),
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(onPressed: () {},
          child: Icon(Icons.edit, color: Colors.blueGrey, size: 30.0),
            mini: true,
          ),
          SizedBox(height: 15.0,),
          FloatingActionButton(onPressed: () {},
            child: Icon(Icons.camera_enhance, color: Colors.black, size: 30.0,),
            mini: true,
          ),
        ],
      ),
    );
  }

  //building the text widget
  _buildText(text){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }



  //building the status widget
  _buildStatus(title, time){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
      child: Card(
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.deepOrange, width: 2.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 26.0,
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
                 SizedBox(width: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 3.0,),
                    Text(time,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
         ),
       ),
    );
  }
}
