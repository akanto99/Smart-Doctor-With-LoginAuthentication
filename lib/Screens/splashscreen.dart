import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';
import 'package:smart_doctor/Screens/Loginpage/opening.dart';



class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => (Opening()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2BAD93),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70.w,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(100.r),
                        image: DecorationImage(
                          image: AssetImage("assets/images/sdicon.png"),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(
                          width: 2.w,
                          color: const Color(0xFF16E1B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Smart Doctor", style: TextStyle(fontSize: 30.sp, color: const Color(0xFF16E1B8), fontWeight: FontWeight.w500,),)
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                  ],
                ),
              ],
            ),

            //upper
            Positioned(
              left: 0,
              top: -80.h,
              child: Container(
                width: 150.0.w,
                height: 150.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2EDFBC).withOpacity(0.64),
                ),
              ),
            ),
            Positioned(
              left: -80.w,
              top: -8.h,
              child: Container(
                width: 150.0.w,
                height: 150.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF23FFA0).withOpacity(0.26),
                ),
              ),
            ),

            //lower
            Positioned(
              right: -76.w,
              bottom: -5.h,
              child: Container(
                width: 150.0.w,
                height: 150.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF2EDFBC).withOpacity(0.64),
                ),
              ),
            ),
            Positioned(
              right: -1.w,
              bottom: -75.h,
              child: Container(
                width: 150.0.w,
                height: 150.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF23FFA0).withOpacity(0.26),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}