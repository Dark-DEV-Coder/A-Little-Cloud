import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("About"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
