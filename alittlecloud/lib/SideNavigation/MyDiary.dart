import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyDiary extends StatelessWidget {
   MyDiary({Key? key}) : super(key: key);
  final List<String> _title = <String>[];
  final List<String> _hours = <String>[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("MyDiary"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        if (index >= _title.length) {
          _title.add("Title goes here kajsdasdfsdfsd");
          _hours.add("4 hours");
        }
        return  _buildRow(_title[index], _hours[index]);
      }),
      floatingActionButton: FloatingActionButton(
      onPressed: null,
      child: Icon(Icons.add),
    ),

    );
  }
Widget _buildRow(String t, String h){
    return  Container(
      margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
      child: ListTile(
        title: Text(t,style: TextStyle(fontSize: 32),maxLines: 1,overflow: TextOverflow.ellipsis),
        subtitle: Text(h),
        trailing: Icon(Icons.more_vert_outlined),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
}
}
