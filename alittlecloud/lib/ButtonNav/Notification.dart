import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';

class Notifications extends StatefulWidget{
  @override
  _Notifications createState() => _Notifications();
}
class _Notifications extends State<Notifications> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Notification Screen", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}