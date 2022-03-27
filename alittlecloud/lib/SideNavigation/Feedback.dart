import 'package:alittlecloud/custom_app_bar.dart';
import 'package:flutter/material.dart';
class feedback extends StatelessWidget {
  const feedback ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Feedback"),
      centerTitle: true,
      backgroundColor: primaryColor,
    ),

  );
}
