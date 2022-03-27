import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';
import '../color.dart';


class NewPost extends StatefulWidget{
  @override
  _NewPost createState() => _NewPost();
}
class _NewPost extends State<NewPost> {
  Color _backgroundColor = GetColor.colorred;

  void _setbackgroundColor(Color newcolor){
    if (newcolor != _backgroundColor){
      setState(() {
        _backgroundColor = newcolor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      backgroundColor: _backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "New post",
          style: TextStyle(fontSize: 16, fontFamily: "Roboto"),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: _backgroundColor,
            width: w,
            height: h * 0.4,
            child: ConstrainedBox(
              constraints: new BoxConstraints(maxHeight: h),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "How are you today?",
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisSize:  MainAxisSize.min,
                children: <Widget>[
                  _buildbackgroundColorDot(color: GetColor.colorred),
                  SizedBox(width: 15,),
                  _buildbackgroundColorDot(color: GetColor.colororange),
                  SizedBox(width: 15,),
                  _buildbackgroundColorDot(color: GetColor.coloryellow),
                  SizedBox(width: 15,),
                  _buildbackgroundColorDot(color: GetColor.colorblue),
                  SizedBox(width: 15,),
                  _buildbackgroundColorDot(color: GetColor.colorviolet),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: null,
        label: Text(
          "  Post  ",
          style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
        ),
        backgroundColor: GetColor.colorviolet,
        foregroundColor: GetColor.colorgrey,
      ),
    );
  }

  Widget _buildbackgroundColorDot({
    required Color color,
  }){
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          _setbackgroundColor(color);
        },
        child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            border: Border.all(color: Colors.white,width: 3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}