import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/Homepage/homescreen.dart';
import 'package:smart_doctor/Screens/Loginpage/loginscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class Opening extends StatefulWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  _OpeningState createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  FirebaseAuth? _auth;
  User? user;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _auth = FirebaseAuth.instance;
    user = _auth!.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        )
        : user == null
            ? LoginPreference()
            : HomeScreen();
  }
}
