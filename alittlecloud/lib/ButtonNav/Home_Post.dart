import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';


class DashBoard extends StatefulWidget{
  @override
  _DashBoard createState() => _DashBoard();
}
class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: listpost(),
    );
  }


}