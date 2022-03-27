import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../ListPost.dart';

class Motivation extends StatefulWidget{
  @override
  _Motivation createState() => _Motivation();
}
class _Motivation extends State<Motivation> {
  @override

        Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Text("Motivation Screen", style: TextStyle(fontSize: 40)),
        ),
      );
    }
}