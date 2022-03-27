import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Account"),
          centerTitle: true,
          backgroundColor: primaryColor,
        ),

    );
}
