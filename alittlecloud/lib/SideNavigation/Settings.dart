import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  const Settings ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Settings"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
