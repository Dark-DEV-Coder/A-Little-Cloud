import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class MyDiary extends StatelessWidget {
  const MyDiary ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("MyDiary"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
