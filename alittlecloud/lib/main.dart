import 'dart:async';

import 'package:alittlecloud/alldata.dart';
import 'package:alittlecloud/welcom_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//-------------------------------------------------Screen loading no percent---------------------------------------------------//
class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new SignInUp(),
      backgroundColor: Color.fromRGBO(106, 183, 223, 1.0),
      image: new Image.asset(
        'assets/images/logo.png',
      ),
      photoSize: 150.0,
      loaderColor: Colors.white,
      useLoader: true,
    );
  }
}

//----------------------------------------------------------------------------------------------------------------//
// class SplashScreenPage extends StatefulWidget{
//   @override
//   SplashScreenPageState createState() => SplashScreenPageState();
// }
//
// class SplashScreenPageState extends State<SplashScreenPage>{
//   int loadingPercent =0;
//   Future<Widget> loadFormFuture() async{
//     while(this.loadingPercent<100){
//       this.setState(() {
//         this.loadingPercent++;
//         print("Percent: " + this.loadingPercent.toString());
//       });
//       await Future.delayed(const Duration(milliseconds: 500));
//     }
//     return Future.value(HomeScreen());
//   }
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//   return SplashScreen(
//       navigateAfterFuture: loadFormFuture(),
//       backgroundColor: Colors.white,
//       image: new Image.asset(
//         'assets/images/logo.png',
//       ),
//       photoSize: 180.0,
//       loaderColor: Color.fromRGBO(180, 130, 185, 1.0),
//       useLoader: true,
//     loadingText: Text(this.loadingPercent.toString() + "%"),
//     );
//   }
// }
//------------------------------------------------------------------------------------------------------------------------------------//

class SignInUp extends StatefulWidget {
  @override
  SignInUpScreen createState() => new SignInUpScreen();
}

class SignInUpScreen extends State<SignInUp> {
  TextEditingController datausername = new TextEditingController();
  TextEditingController datapassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double w = MediaQuery.of(context).size.width;
    final double h = MediaQuery.of(context).size.height;
    final double wcon = 0.70 * w;
    final double hcon = 0.35 * h;
    return Container(
      color: Color.fromRGBO(106, 183, 223, 1.0),
      child: Center(
        child: Container(
          width: wcon,
          height: hcon,
          // margin:  EdgeInsets.fromLTRB(0, (w/2)-(wcon/2), 0, (w/2)-(wcon/2)),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: (0.45 * w),
                      height: (0.25 * h),
                    ),
                  )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: new FlatButton(
                      onPressed: Login,
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 16.0,fontFamily: "Roboto",),
                      ),
                      color: Color.fromRGBO(247, 225, 70, 1.0),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                  Expanded(flex: 1, child: Text("")),
                  Expanded(
                    flex: 5,
                    child: new FlatButton(
                      onPressed: Logup,
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 16.0,fontFamily: "Roboto",),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void Login() {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
      final double w1 = MediaQuery.of(context).size.width;
      final double h1 = MediaQuery.of(context).size.height;
      final double wcon1 = 0.75 * w1;
      final double hcon1 = 0.45 * h1;
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromRGBO(106, 183, 223, 1.0),
        body: SingleChildScrollView(
          child: Container(
            width: w1,
            height: h1,
            child: Center(
              child: Container(
                width: wcon1,
                height: hcon1,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 24,
                              decoration: TextDecoration.none,
                              color: Color.fromRGBO(247, 225, 70, 1.0),
                              fontWeight: FontWeight.bold,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                                child: TextField(
                                  controller:datausername,
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Roboto",),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        )))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                                child: TextField(
                                  controller:datapassword,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white, fontSize: 16,fontFamily: "Roboto",),
                            focusedBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: new UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                        )))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'No account?',
                          style: TextStyle(fontSize: 12, color: Colors.white,fontFamily: "Roboto",),
                        ),
                        TextButton(
                          onPressed: Logup,
                          child: Text(
                            "Sign up",
                            style: TextStyle(fontSize: 12, color: Color.fromRGBO(62, 60, 99, 1.0),fontFamily: "Roboto",),
                          ),
                        ),
                        SizedBox(width: 0.06*wcon1,),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(fontSize: 12, color: Color.fromRGBO(62, 60, 99, 1.0),fontFamily: "Roboto",),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                          child: FlatButton(
                            // onPressed: (){ // push data up firebase
                            //         Map<String,dynamic> data ={"ID_Permission":"QL","Username":datausername.text,"Password":datapassword.text,"State":1};
                            //         FirebaseFirestore.instance.collection("accounts").add(data);
                            // },
                            onPressed: () async{ // get one data from firebase
                              // DocumentSnapshot variable = await FirebaseFirestore.instance.collection("accounts").doc("AC01").get();
                              if (datausername.text == ""){
                                showDialog<String>( // show notification
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: Text("Username is empty"),
                                      content: Text("Please enter your username.",style: TextStyle(fontFamily: "Roboto",),),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'Close'),
                                          child: Text('Close',style: TextStyle(fontFamily: "Roboto",),),
                                        ),
                                      ],
                                    ),
                                );
                              }
                              else{
                                if (datapassword.text == ""){
                                  showDialog<String>( // show notification
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: Text("Password is empty"),
                                      content: Text("Please enter your password.",style: TextStyle(fontFamily: "Roboto",),),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () => Navigator.pop(context, 'Close'),
                                          child: Text('Close',style: TextStyle(fontFamily: "Roboto",),),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                else{
                                  var getaccount = await FirebaseFirestore.instance.collection("accounts")
                                      .where("Username", isEqualTo: datausername.text)
                                      .where("Password",isEqualTo: datapassword.text)
                                      .get();
                                  if (getaccount.size==0) {
                                    showDialog<String>( // show notification
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: Text("Password not match"),
                                        content: Text("Please make sure your password match.",style: TextStyle(fontFamily: "Roboto",),),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Close'),
                                            child: Text('Close',style: TextStyle(fontFamily: "Roboto",),),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                  else{
                                    String u = getaccount.docs.single.get("Username");
                                    String p = getaccount.docs.single.get("Password");
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WelcomHome(u,p)));
                                  }
                                }
                              }

                          },
                          //   onPressed: (){ // get all data from firebase
                          //     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => alldata()));
                          //   },
                          //   onPressed: () => showDialog<String>( // show notification
                          //       context: context,
                          //       builder: (BuildContext context) => AlertDialog(
                          //         title: Text("Password not match"),
                          //         content: Text("Please make sure your password match."),
                          //         actions: <Widget>[
                          //           TextButton(
                          //               onPressed: () => Navigator.pop(context, 'Close'),
                          //               child: Text('Close'),
                          //           ),
                          //         ],
                          //       ),
                          //   ),
                            child: Text(
                              "Continue",
                              style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(62, 60, 99, 1.0),fontFamily: "Roboto",),
                            ),
                            color: Color.fromRGBO(247, 225, 70, 1.0),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Color.fromRGBO(247, 225, 70, 1.0),
                                  width: 1,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
                            minWidth: wcon1,
                            height: 40,
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
  void Logup() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      final double w1 = MediaQuery.of(context).size.width;
      final double h1 = MediaQuery.of(context).size.height;
      final double wcon1 = 0.85 * w1;
      final double hcon1 = 0.55 * h1;
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color.fromRGBO(106, 183, 223, 1.0),
        body: SingleChildScrollView(
          child: Container(
            width: w1,
            height: h1,
            child: Center(
              child: Container(
                width: wcon1,
                height: hcon1,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  fontSize: 24,
                                  decoration: TextDecoration.none,
                                  color: Color.fromRGBO(247, 225, 70, 1.0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Username",
                                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                                    focusedBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                )))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                                    focusedBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  obscureText: true,
                                )))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Age",
                                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                                    focusedBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: new UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  obscureText: true,
                                )))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 0.59*wcon1,),
                        Text(
                          'Have account?',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        TextButton(
                          onPressed: Login,
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 12, color: Color.fromRGBO(62, 60, 99, 1.0)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Center(
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  "Continue",
                                  style: TextStyle(fontSize: 16.0,color: Color.fromRGBO(62, 60, 99, 1.0)),
                                ),
                                color: Color.fromRGBO(247, 225, 70, 1.0),
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color.fromRGBO(247, 225, 70, 1.0),
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)),
                                minWidth: wcon1,
                                height: 40,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}


