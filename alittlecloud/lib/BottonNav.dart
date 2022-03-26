import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


  FloatingActionButton buildFloatingActionButton(){
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){},
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 7,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 90,
                  onPressed: (){
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                      ),
                      Text("Home",
                        style: TextStyle(
                          color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                        ),
                      )

                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 90,
                  onPressed: (){
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wysiwyg,
                        color: getCurrentTag() == 1 ? Colors.blue : Colors.blue,
                      ),
                      Text("Post",
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
                  onPressed: (){
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
                      Text("Motivational",
                        style: TextStyle(
                          color: getCurrentTag() == 0 ? Colors.blue : Colors.blue,
                        ),
                      )

                    ],
                  ),
                ),

                MaterialButton(
                  minWidth: 90,
                  onPressed: (){
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: getCurrentTag() == 3 ? Colors.blue : Colors.blue,
                      ),
                      Text("Home",
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

