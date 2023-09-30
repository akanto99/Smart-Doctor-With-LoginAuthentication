import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Ambulance/division.dart';
import 'package:smart_doctor/Screens/Blooddonationpage/blood_bank.dart';
import 'package:smart_doctor/Screens/Findhospitalpage/find_hospital.dart';
import 'package:smart_doctor/Screens/Homepage/generaltreatment.dart';
import 'package:smart_doctor/Screens/Homepage/homegentreat.dart';
import 'package:smart_doctor/Screens/Loginpage/userprofile.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/suggestedspecialist.dart';
import 'package:smart_doctor/Screens/ambulance.dart';
import 'package:smart_doctor/Screens/tabbar_material.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  final page = [
    GeneralTreatment(),
    SuggestedSpecialist(),
    FindHospotal(),
    HomeGeneralTreatment(),
    Division(),
    BloodBank(),
    UserProfile(),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: WillPopScope(
          onWillPop: () async {
            final value = await showDialog<bool>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    //backgroundColor: const Color(0xFF2EDFBC),
                    backgroundColor: Colors.white,
                    content: Text(
                      "Do You Want To Logout?",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    actions: [
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF2BAD93),
                          ),
                          child: Text(
                            "yes",
                            style: TextStyle(fontSize: 25.sp),
                          )),
                      SizedBox(
                        width: 60,
                      ),
                      ElevatedButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF2BAD93),
                          ),
                          child: Text(
                            "no",
                            style: TextStyle(fontSize: 25.sp),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  );
                });
            if (value != null) {
              return Future.value(value);
            } else {
              return Future.value(false);
            }
          },
          child: Scaffold(
            extendBody: true,
            // bottomNavigationBar: BottomNavigationBar(
            //   currentIndex: _currentIndex,
            //   backgroundColor: Color(0xFF2BAD93),
            //   items: [
            //     BottomNavigationBarItem(
            //       icon: Icon(Icons.health_and_safety_rounded, color: const Color(0xFF000000),),
            //       title: Text(
            //         'Health',
            //         style: TextStyle(fontSize: 15,color: Colors.black45),
            //       ),
            //     ),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.medical_services_rounded, color: const Color(0xFF000000),),
            //         title: Text(
            //           'Product',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //     BottomNavigationBarItem(
            //         icon: Icon(Icons.local_hospital_outlined, color: const Color(0xFF000000),),
            //         title: Text(
            //           'Hospital',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //
            //
            //     BottomNavigationBarItem(
            //         icon:
            //         Icon(Icons.home_filled, color: const Color(0xFF000000),size: 35,),
            //         title: Text(
            //           'Home',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //     BottomNavigationBarItem(
            //         icon:
            //             Icon(Icons.airport_shuttle_outlined, color: const Color(0xFF000000),),
            //         title: Text(
            //           'Ambulance',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //     BottomNavigationBarItem(
            //         icon:
            //         Icon(Icons.bloodtype_rounded, color: const Color(0xFF000000),),
            //         title: Text(
            //           'Blood',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //
            //     BottomNavigationBarItem(
            //         icon:
            //             Icon(Icons.account_circle_outlined, color: const Color(0xFF000000),),
            //         title: Text(
            //           'Profile',
            //           style: TextStyle(fontSize: 15,color: Colors.black45),
            //         )),
            //   ],
            //   onTap: (index) {
            //     setState(() {
            //       _currentIndex = index;
            //     });
            //   },
            // ),
            bottomNavigationBar: TabBarMaterial(
              index: index,
              onChangedTab: onChangedTab,
            ),
            body: page[index],
            floatingActionButton: FloatingActionButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeGeneralTreatment()));},
              child: Icon(Icons.home_filled),
              backgroundColor: Color(0xFFf3f3f3),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          ),
        )
    );
  }
  void onChangedTab(int index){
    setState(() {
      this.index = index;
    });
  }
}
