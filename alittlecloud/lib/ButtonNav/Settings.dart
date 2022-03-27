import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';

class Settings extends StatefulWidget{
  @override
  _Settings createState() => _Settings();
}
class _Settings extends State<Settings> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings Screen", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}