import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/loginscreen.dart';


class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  String currentUser = '';
  final user = FirebaseAuth.instance.currentUser!;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text("Profile", style: TextStyle(fontSize: 25),),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 40,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(user.photoURL!,),
                    ),
                  ],
                ),
                SizedBox(width: 40,),
                Column(
                  children: [
                    Text('Name: ' + user.displayName! ,style: TextStyle(fontSize: 15),),
                    SizedBox(height: 10,),
                    Text("Email: " + user.email! , style: TextStyle(fontSize: 15),),
                  ],
                ),
              ],
            ),
            // Text("Phone" + user.phoneNumber!)
            ElevatedButton(
                onPressed: ()async{
                  await _auth.signOut();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPreference()));
                },
                child: Container(
                  width: 85,
                  child: Row(
                    children: [
                      Text("Logout"),
                      SizedBox(width: 15,),
                      Icon(Icons.logout),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
