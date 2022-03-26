import 'package:flutter/material.dart';
import 'package:alittlecloud/Icon/icon3dot_icons.dart';
class listpost extends StatefulWidget {
  @override
  listpostState createState() => listpostState();
}

class listpostState extends State<listpost> {
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
                Container(
                  height: 194,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(onPressed: null, child: Text("Read more")),
                        ],
                      )
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.insert_comment_outlined,color: Color.fromRGBO(60, 62, 99, 1.0),),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.favorite_border,color: Color.fromRGBO(60, 62, 99, 1.0),),
                          ),
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