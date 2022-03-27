import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';


class NewPost extends StatefulWidget{
  @override
  _NewPost createState() => _NewPost();
}
class _NewPost extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("New Post Screen", style: TextStyle(fontSize: 40)),
      ),
    );
  }


}