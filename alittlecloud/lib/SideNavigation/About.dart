import 'package:alittlecloud/Custom_NavBar/custom_app_bar.dart';
import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    body:
    SafeArea(
      top: false,
      child: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  'MIT License',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'Copyright © 2022 A Little Cloud Teams ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16),
                child: const Text(
                  'Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or modified copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 16,
                    left: 16,
                    right: 16),
                child: const Text(
                  'The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  'The app is made from a fork of:  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  ' A Little Cloud  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: const Text(
                  "This app makes use of Dart's Sound Null Safety.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: TextButton(
                    child: Text("Its code can be found here.",textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 16,),
                        ),
                    onPressed: (){},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Center(

                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
