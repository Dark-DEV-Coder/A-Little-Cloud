import 'dart:developer';

import 'package:alittlecloud/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_post_user.dart';


FloatingActionButton buildFloatingActionButton(BuildContext context) {
  return FloatingActionButton(
    child: Icon(Icons.add),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AddPostUser()));
    },
  );
}


BottomAppBar buildBottomAppBar() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 7,
    child: Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 90,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 90,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wysiwyg,
                      color: getCurrentTag() == 1 ? Colors.blue : Colors.blue,
                    ),
                    Text(
                      "Post",
                      style: TextStyle(
                        color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  // setState((){
                  //
                  // });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: getCurrentTag() == 2 ? Colors.blue : Colors.blue,
                    ),
                    Text(
                      "Motivational",
                      style: TextStyle(
                        color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 90,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: getCurrentTag() == 3 ? Colors.blue : Colors.blue,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: getCurrentTag() == 1 ? Colors.blue : Colors.blue,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
