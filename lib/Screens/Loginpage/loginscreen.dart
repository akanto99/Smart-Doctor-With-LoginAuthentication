import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Loginpage/facebooksignin.dart';
import 'package:smart_doctor/Screens/Loginpage/googlesignin.dart';
import 'package:smart_doctor/Screens/Homepage/homescreen.dart';

class LoginPreference extends StatefulWidget {
  const LoginPreference({Key? key}) : super(key: key);

  @override
  _LoginPreferenceState createState() => _LoginPreferenceState();
}

class _LoginPreferenceState extends State<LoginPreference> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: const Color(0xFF2EDFBC),
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
          backgroundColor: const Color(0xFF2BAD93),
          body: Center(
            child: SizedBox(
                width: 412.w,
                height: 870.h,
                child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                  Positioned(
                    top: -117.w,
                    child: Container(
                      width: 412.w,
                      height: 450.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/doctor.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 57.h,
                    child: Container(
                      alignment: Alignment(0.02, 0.66),
                      width: 320.w,
                      height: 450.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.53),
                          end: Alignment(0.0, 0.14),
                          colors: [
                            const Color(0xFF2BAD93).withOpacity(0.7),
                            Colors.white.withOpacity(0.7)
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            offset: Offset(0, 3.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 299.w,
                        height: 500.h,
                        child: Column(
                          children: <Widget>[
                            Spacer(flex: 70),
                            Container(
                              alignment: Alignment(0.14, 0.0),
                              width: 200.w,
                              height: 42.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14.r),
                                color: Colors.white,
                              ),
                              child: Text(
                                'LOGIN to CONTINUE',
                                style: TextStyle(
                                  fontFamily: 'Segoe Script',
                                  fontSize: 17.sp,
                                  color: const Color(0xFF2BAD93),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Spacer(flex: 70),
                            Container(
                              alignment: Alignment(0.08, -0.06),
                              width: 299.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: Colors.white,
                              ),
                              child: SizedBox(
                                width: 280.w,
                                height: 37.h,
                                child: TextButton(
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(flex: 25),
                                      Align(
                                        alignment: Alignment(0.0, 0.11),
                                        child: Text(
                                          'Connect with Google',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 16.sp,
                                            color: const Color(0xFF2BAD93),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Spacer(flex: 49),
                                      Image.asset(
                                        "assets/images/googlelogo.jpg",
                                      ),
                                      Spacer(flex: 23),
                                    ],
                                  ),
                                  onPressed: () {
                                    signInWithGoogle();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()),
                                        (route) => false);
                                  },
                                ),
                              ),
                            ),
                            Spacer(flex: 40),
                            Container(
                              alignment: Alignment(0.09, -0.01),
                              width: 299.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.r),
                                color: Colors.white,
                              ),
                              child: SizedBox(
                                width: 285.w,
                                height: 37.h,
                                child: TextButton(
                                  child: Row(
                                    children: <Widget>[
                                      Spacer(flex: 27),
                                      Align(
                                        alignment: Alignment(0.0, 0.11),
                                        child: Text(
                                          'Connect with Facebook',
                                          style: TextStyle(
                                            // fontFamily: 'Segoe UI',
                                            fontSize: 16.sp,
                                            color: const Color(0xFF2BAD93),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      Spacer(flex: 49),
                                      Image.asset(
                                        "assets/images/fblogo.png",
                                      ),
                                      Spacer(flex: 39),
                                    ],
                                  ),
                                  onPressed: () {
                                    signInWithFacebook();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen()),
                                        (route) => false);
                                  },
                                ),
                              ),
                            ),
                            Spacer(flex: 70),
                            Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 15.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_box,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text(
                                      "By signing in you are accepting \nour terms and conditions",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                )),
                            Spacer(
                              flex: 102,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),
          )),
    ));
  }
}
