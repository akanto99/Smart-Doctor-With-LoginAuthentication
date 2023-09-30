import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/Blooddonationpage/blood_bank.dart';
import 'package:smart_doctor/Screens/Homepage/generaltreatment.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/suggestedspecialist.dart';
import 'package:smart_doctor/Screens/ambulance.dart';
import 'package:smart_doctor/Screens/homepage.dart';
import 'package:smart_doctor/Screens/userprofile.dart';

class BottomTabBar extends StatefulWidget {

  const BottomTabBar({Key? key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {


  final page =[
    GeneralTreatment(),
    Ambulance(),
    BloodBank(),
    HomepageG(),
    SuggestedSpecialist(),
    UserProfile(),
  ];

  var _currentIndex= 3;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text("Smart Doctor"),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            items:
            [
              BottomNavigationBarItem(
                icon:  Icon(Icons.airport_shuttle_outlined,color: Colors.red),
                // title: Text('Ambulance ',style: TextStyle(fontSize: 15),),

              ),


              BottomNavigationBarItem(
                  icon:  Icon(Icons.home_outlined,color: Colors.red),
                  // title: Text('Home ',style: TextStyle(fontSize: 15),)
              ),


              BottomNavigationBarItem(
                  icon:  Icon(Icons.account_circle_outlined,color: Colors.red),
                  //title: Text('profile ',style: TextStyle(fontSize: 15),)
              ),
              BottomNavigationBarItem(
                  icon:  Icon(Icons.account_circle_outlined,color: Colors.red),
                  //title: Text('profile ',style: TextStyle(fontSize: 15),)
              ),
              BottomNavigationBarItem(
                  icon:  Icon(Icons.account_circle_outlined,color: Colors.red),
                  //title: Text('profile ',style: TextStyle(fontSize: 15),)
              ),
              BottomNavigationBarItem(
                  icon:  Icon(Icons.account_circle_outlined,color: Colors.red),
                  //title: Text('profile ',style: TextStyle(fontSize: 15),)
              ),

            ],

            onTap: (index){
              setState(() {
                _currentIndex= index;
              });
            },


          ),

          body: page[_currentIndex],

        )
    );
  }
}
