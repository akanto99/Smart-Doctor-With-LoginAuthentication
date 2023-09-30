import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/anus_specialist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/brain_specialist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/dentist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/ent_specialist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/eye_specialist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/gastrology_specialist.dart';
import 'package:smart_doctor/Screens/Suggestedspecialist/sexual_specialist.dart';

class SuggestedSpecialist extends StatelessWidget {
  static Color gredient1 = Color(0xFFFFFFFF);
  static Color gredient2 = Color(0xFF7FF2DB);
  static Color color1 = Color(0xFFB9E1FA);
  static Color color2 = Color(0xFF2BAD93);
  static Color shadowColor1 = Color.fromRGBO(0, 0, 0, 0.1);
  static Color shadowColor2 = Color.fromRGBO(255, 255, 255, 0.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 175.h,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 17.h,),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
                  child: Container(
                    width: 200.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.r),
                      image: DecorationImage(
                        image: AssetImage('assets/images/checkup.jpg',),
                        fit: BoxFit.cover,
                      ),
                      // shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.r),
                  topRight: Radius.circular(28.r),
                ),
              ),
              child: Column(children: [
                SizedBox(
                  height: 5.h,
                ),
                Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 55.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: color2,
                      ),
                      child: Center(
                        child: Text(
                          'Suggested Specialist',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 12, left: 12),
                      child:
                          ListView(scrollDirection: Axis.vertical, children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: color2,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0)),
                              color: color2,
                              shadowColor: shadowColor2,
                              child: ListTile(
                                title: Text(
                                  'Nurologist (ব্রেইন বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF2BAD93),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BrainSpecialist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: color2,
                            // border: Border.all(color: color1,width: 2
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: color2,
                              shadowColor: shadowColor1,
                              child: ListTile(
                                title: Text(
                                  'ENT (নাক, কান, গলা বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color2,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ENTSpecialist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFF2BAD93),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0)),
                              color: color2,
                              shadowColor: shadowColor2,
                              child: ListTile(
                                title: Text(
                                  'Gastrologist (গ্যাস্ট্রোলজী বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF2BAD93),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              GastrologySpecialist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: color2,
                            // border: Border.all(color: color1,width: 2
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: color2,
                              shadowColor: shadowColor1,
                              child: ListTile(
                                title: Text(
                                  'Dentist (দাঁত বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color2,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dentist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: const Color(0xFF2BAD93),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0)),
                              color: color2,
                              shadowColor: shadowColor2,
                              child: ListTile(
                                title: Text(
                                  'Eye specialist (চোখ বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xFF2BAD93),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EyeSpecialist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: color2,
                            // border: Border.all(color: color1,width: 2
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: color2,
                              shadowColor: shadowColor1,
                              child: ListTile(
                                title: Text(
                                  'Anus Specialist (পায়ু বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color2,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AnusSpecialist()));
                                },
                              )),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: color2,
                            // border: Border.all(color: color1,width: 2
                            // ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              color: color2,
                              shadowColor: shadowColor1,
                              child: ListTile(
                                title: Text(
                                  'Sexologist (যৌন বিশেষজ্ঞ)',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                trailing: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: color2,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.16),
                                        offset: Offset(0, 3.0),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.near_me,
                                    color: Colors.white,
                                  ),
                                  // splashColor: color1,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SexualSpecialist()));
                                },
                              )),
                        ),
                      ])),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
