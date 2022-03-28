import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class Account extends StatelessWidget {
  const Account ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      top: false,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,),
            child: Image.network('https://i.pinimg.com/564x/cf/f0/59/cff05928c82eb0d047411c3b70e11235.jpg',
              height: 146,
            ),
          ),

        ],
      ),
    ),
    );
}
