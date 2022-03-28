import 'package:alittlecloud/color.dart';
import 'package:alittlecloud/home.dart';
import 'package:alittlecloud/post_staff.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class WelcomHome extends StatefulWidget {
  final String u;
  final String p;
  WelcomHome(this.u, this.p);
  @override
  WelcomHomeState createState() => WelcomHomeState(u, p);
}

class WelcomHomeState extends State<WelcomHome> {
  final String user;
  final String pass;
  WelcomHomeState(this.user, this.pass);
  @override
  Widget build(BuildContext context) {
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    final double wcon = 0.70 * w;
    final double hcon = 0.55 * h;
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: GetColor.coloraqua,
        child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin:  EdgeInsets.fromLTRB(0, (h/2)-75, 0, 0 ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Center(
                                child: Image.asset(
                                  "assets/images/LogoNoName.png",
                                  width: (125),
                                  height: (125),
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Center(
                                child: Text("Welcom home!", style: GoogleFonts.mali(
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                )
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: Screen2,
        child: Icon(Icons.arrow_forward_outlined,size: 40),
        backgroundColor: GetColor.coloraqua,
        elevation: 0,
      ),
    );
  }

  void Screen2() {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
      final double w = MediaQuery.of(context).size.width;
      final double h = MediaQuery.of(context).size.height;
      final double wcon = 0.70 * w;
      final double hcon = 0.55 * h;
      return Scaffold(
        body: Container(
          color: GetColor.coloraqua,
          child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin:  EdgeInsets.fromLTRB(0, (h/2)-75, 0, 0 ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/LogoNoName.png",
                                    width: (125),
                                    height: (125),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Center(
                                  child: Text("Are you okay today?", style: GoogleFonts.mali(
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.fromLTRB(0, (h-180)-(h/2+75), 0, 0),
                    alignment: Alignment.bottomCenter,
                    height: h-(h/2+75+56),
                    width: 280,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                child: Center(
                                    child: SvgPicture.asset(
                                      "assets/images/sentiment_very_dissatisfied_black_24dp.svg",
                                      color: Colors.white,
                                      width: 40,
                                      height: 40,
                                    )
                                )),
                            Expanded(
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/sentiment_dissatisfied_black_24dp.svg",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40,
                                  ),
                                )),
                            Expanded(
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/sentiment_neutral_black_24dp.svg",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40,
                                  ),
                                )),
                            Expanded(
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/sentiment_satisfied_black_24dp.svg",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40,
                                  ),
                                )),
                            Expanded(
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/sentiment_very_satisfied_black_24dp.svg",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40,
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
          },
          child: Icon(Icons.arrow_forward_outlined,size: 40),
          backgroundColor: GetColor.coloraqua,
          elevation: 0,
        ),
      );
    }));
  }
}
