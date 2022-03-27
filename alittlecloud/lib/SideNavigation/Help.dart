import 'package:alittlecloud/custom_app_bar.dart';
import 'package:flutter/material.dart';
class Help extends StatelessWidget {
  const Help ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Help"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
