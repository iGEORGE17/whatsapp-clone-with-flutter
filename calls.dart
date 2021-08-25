import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildCallsItem(false),
          _buildCallsItem(true),
          _buildCallsItem(false),
          _buildCallsItem(true),
          _buildCallsItem(true),
          _buildCallsItem(true),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.add_call),
      ),
    );
  }

  //building a function

  _buildCallsItem(isCall){
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        child: Icon(Icons.person, color: Colors.black, size: 38,),
      ),
      title: Text("Caller"),
      subtitle: Row(
        children: <Widget>[
          Icon(
            Icons.transit_enterexit,
            size: 23,
            color: Colors.red,
          ),
          SizedBox(width: 3.0,),
          Text("7 July, 7:35 am",
            style: TextStyle(
              color: Colors.grey,
            ) ,),
        ],
      ),
      trailing: IconButton(
          icon: Icon(isCall ? Icons.call : Icons.videocam, size: 28,),
          onPressed: null),
    );
  }
}
