import 'package:flutter/material.dart';

const Color primaryColor = Color.fromRGBO(106, 183, 223, 1.0);
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      actions: <Widget>[
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.search),
          iconSize: 28.0,

        ),

        // IconButton(
        //   onPressed: (){},
        //   icon: const Icon(Icons.notifications_none),
        //   iconSize: 28.0,
        //
        // ),
      ],
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
