import 'package:flutter/material.dart';

import '../Custom_NavBar/DrawerNavBar.dart';
import '../post_staff.dart';

class Motivation extends StatefulWidget{
  @override
  _Motivation createState() => _Motivation();
}
class _Motivation extends State<Motivation> {
  @override

        Widget build(BuildContext context) {
      return Scaffold(
        drawer: NavBar(),
        body: PostStaff(),
      );
    }
}