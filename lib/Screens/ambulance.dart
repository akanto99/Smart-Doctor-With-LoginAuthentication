import 'package:flutter/material.dart';

class Ambulance extends StatefulWidget {
  const Ambulance({Key? key}) : super(key: key);

  @override
  _AmbulanceState createState() => _AmbulanceState();
}

class _AmbulanceState extends State<Ambulance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: Text("Ambulance", style: TextStyle(fontSize: 40),)),
      ),
    );
  }
}
