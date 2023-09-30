import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/bottomtabbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Something went Wrong');
        }
        else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else{
          return BottomTabBar();
        }
      },
    ),
  );
}