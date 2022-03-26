import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class alldata extends StatefulWidget{
  @override
  _alldataState createState() => _alldataState();
}

class _alldataState extends State<alldata>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo get all data"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("accounts").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if (!snapshot.hasData){
            return Text("No value");
          }
          if (snapshot.connectionState == ConnectionState.waiting){
            return Text("Loading");
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document){
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['Username']),
              subtitle: Text(data['Password']),
            );
            }).toList(),
          );
        }
      ),
    );
  }
}