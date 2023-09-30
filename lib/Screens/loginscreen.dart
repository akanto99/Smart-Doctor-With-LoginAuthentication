import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/facebooksignin.dart';
import 'package:smart_doctor/Screens/googlesignin.dart';
import 'package:smart_doctor/Screens/homescreen.dart';

class LoginPreference extends StatefulWidget {
  const LoginPreference({Key? key}) : super(key: key);

  @override
  _LoginPreferenceState createState() => _LoginPreferenceState();
}

class _LoginPreferenceState extends State<LoginPreference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(70.0),
          child: Column(
            children: [
              Text("Welcome to SMART DOCTOR"),
              SizedBox(height: 21,),
              Text("LOGIN to continue"),
              SizedBox(height: 21,),
              ElevatedButton(onPressed: (){
                signInWithGoogle();
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route)=>false);
              }, child: Row(children: [
                Icon(Icons.no_encryption_gmailerrorred),
                SizedBox(width: 20,),
                Text("Gmail Login"),
              ],)),
              ElevatedButton(onPressed: (){
                signInWithFacebook();
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route)=>false);              }, child: Row(children: [
                Icon(Icons.facebook),
                SizedBox(width: 20,),
                Text("Facebook Login"),
              ],)),
            ],
          ),
        ),
      ),
    );
  }
}
