import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class MyDiary extends StatefulWidget{
  @override
  MyDiaryState createState() => MyDiaryState();
}

class MyDiaryState extends State<MyDiary> {
  final List<String> _title = <String>[];
  final List<String> _hours = <String>[];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: GetColor.colorContainer,
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
      onPressed: add_diary,
      child: Icon(Icons.add),
        backgroundColor: GetColor.coloraqua,
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
void add_diary(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      final double w = MediaQuery.of(context).size.width;
      final double h = MediaQuery.of(context).size.height;
return Scaffold(
  resizeToAvoidBottomInset: false,
  appBar: AppBar(
    title: Text(
      "New diary",
      style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
    ),
    backgroundColor: GetColor.coloraqua,
  ),
  body: Column(
    children: <Widget>[
      Container(
        width: 0.9*w,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Title",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontFamily: "Roboto",
            ),
            focusedBorder: new UnderlineInputBorder(
              borderSide: BorderSide(color: GetColor.colorviolet),
            ),
            enabledBorder: new UnderlineInputBorder(
              borderSide: BorderSide(color: GetColor.colorviolet),
            ),
          ),
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
      Container(
        width: w,
        height: h * 0.35,
        child: ConstrainedBox(
          constraints: new BoxConstraints(maxHeight: h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: true,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Is there anything you want to tell me?",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontFamily: "Roboto",
                ),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.multiline,
              maxLines: null,
            ),
          ),
        ),
      ),
    ],
  ),
  floatingActionButton: FloatingActionButton.extended(
    onPressed: (){
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.save_alt_outlined),
                title: Text('Save to watch later'),
              ),
              ListTile(
                leading: Icon(Icons.schedule_outlined),
                title: Text('Schedule time to delete'),
              ),
            ],
          );
        },
      );
    },
    label: Text(
      "  Save  ",
      style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
    ),
    backgroundColor: GetColor.colorviolet,
    foregroundColor: GetColor.colorgrey,
  ),
);
    }));
}

}
