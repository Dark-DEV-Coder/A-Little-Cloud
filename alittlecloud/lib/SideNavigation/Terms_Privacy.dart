import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class Terms_Privacy extends StatelessWidget {
  const Terms_Privacy ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Terms & Privacy"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
