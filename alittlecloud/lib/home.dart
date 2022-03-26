import 'dart:developer';

import 'package:alittlecloud/BottonNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:alittlecloud/Icon/icon3dot_icons.dart';

import 'package:alittlecloud/custom_app_bar.dart';
import 'ListPost.dart';
import 'NavBar.dart';
import 'custom_app_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: CustomAppBar(),
      body: listpost(),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

}



