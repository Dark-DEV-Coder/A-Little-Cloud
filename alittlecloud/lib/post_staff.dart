import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:alittlecloud/Icon/icon3dot_icons.dart';

class PostStaff extends StatefulWidget {
  @override
  PostStaffState createState() => PostStaffState();
}

class PostStaffState extends State<PostStaff> {
  final List<String> _user = <String>[];
  final List<String> _text = <String>[];
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    final double wcon = 0.70 * w;
    final double hcon = 0.55 * h;
    // TODO: implement build
    return Material(
      child: Container(
          color: Colors.grey,
          child: ListView.builder(itemBuilder: (context, index) {
            if (index >= _user.length) {
              _user.add("abc123");
              _text.add("dkajsdfahsdfuihasdfiuhasdfuddddddddddddddddddddddđlkáđoáioáidóihdfgióahgoihàugoihúadfioguhàg");
            }
            return _buildRow(_user[index], _text[index]);
          })),
    );
  }

  Widget _buildRow(String u1, String t1) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 1'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                  trailing: Icon(Icons.more_vert_outlined),
                ),
                Image.asset('assets/images/2.png'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: <Widget>[
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        ActionChip(
                          label: Text('Action 1'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Expanded(
                      child: ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: null, icon: Icon(Icons.favorite_border)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
