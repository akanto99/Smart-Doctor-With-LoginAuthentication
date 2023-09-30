import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Loginpage/loginscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String currentUser = '';
  final user = FirebaseAuth.instance.currentUser!;
  final _auth = FirebaseAuth.instance;



  String _urlfb='https://www.facebook.com/simpleacademyy/';
  String _urlyou='https://youtube.com/channel/UCgmZ_vMLTxy6aZ-Jedt2Ecw';
  String _urlins='simple_academyy';
  String _urltwi='https://twitter.com/Simple_Academy_?t=bX2sw-kj6u55rWuth5Tz-A&s=09';
  String _urlweb='https://www.simpleacademysa.blogspot.com/';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2BAD93),
        body: Center(
          child: SizedBox(
            width: 362.w,
            height: 920.h,
            child: Stack(
              children: [
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
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 30.h),
                    height: 30.h,
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 32.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 145.h,
                  right: 20.w,
                  child: Container(
                    width: 320.w,
                    height: 430.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.h,
                        ),
                        Text(
                          user.displayName!,
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 31.sp,
                            color: const Color(0xFF577B74),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                          user.email!,
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 21.sp,
                            color: const Color(0xFF688D85),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Text("Phone" + user.phoneNumber!)
                        SizedBox(
                          height: 24.h,
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              await _auth.signOut();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPreference()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2BAD93),
                            ),
                            child: Container(
                              width: 240.w,
                              height: 40.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Logout",
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 30.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Icon(
                                    Icons.logout,
                                    size: 25.sp,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )),
                        Divider(
                          height: 50.h,
                          color: Colors.black,
                        ),
                        Text(
                          'Thanks For Using our App',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 12.sp,
                            color: const Color(0xFF2BAD93),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Connect with our social site?',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 11.sp,
                            color: const Color(0xFF2BAD93),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Container(
                                height: 30.h,
                                width: 30.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/fblogo.png'),
                                  ),
                                ),
                              ),
                              onTap: _launchURLfb,
                            ),
                            InkWell(
                              child: Container(
                                height: 35.h,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/youtube.png'),
                                  ),
                                ),
                              ),
                              onTap:_launchURLyou ,
                            ),
                            InkWell(
                              child:Container(
                                height: 32.h,
                                width: 32.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/insta.png'),
                                  ),
                                ),
                              ),
                              onTap: _launchURLins,
                            ),
                            InkWell(
                              child: Container(
                                height: 35.h,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage('assets/images/twitter.png'),
                                  ),
                                ),
                              ),
                              onTap: _launchURLtwi,
                            ),
                            InkWell(
                              child:Container(
                                height: 35.h,
                                width: 35.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/web.jpg'),
                                  ),
                                ),
                              ),
                              onTap:_launchURLweb,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              child: Text(
                                "About US",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 12.sp,
                                  color: const Color(0xFF688D85),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                        content: Container(
                                          height: 280.h,
                                          width: 320.w,
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                " Company Name\nSimple Academy",
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontStyle: FontStyle.italic,
                                                  fontSize: 16.sp,
                                                  color:
                                                  const Color(0xFF2BAD93),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "\n\nDeveloped By\n",
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                  fontSize: 16.sp,
                                                  color:
                                                  const Color(0xFF2BAD93),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 70.w,
                                                    child: Text(
                                                      "Zishan Hossain\n\nFounder of Simple Academy\n\nFlutter Developer\n\nJavaScript Developer",
                                                      style: TextStyle(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xFF2BAD93),
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalDivider(
                                                    width: 10.w,
                                                  ),
                                                  Container(
                                                    width: 70.w,
                                                    child: Text(
                                                      "Nahid Hassan\n\nFounder of Simple Academy\n\nFlutter Developer\n\nJava \nDeveloper",
                                                      style: TextStyle(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xFF2BAD93),
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 70.w,
                                                    child: Text(
                                                      "Sayeem Ishtiak\n\nApp Developer of Simple Academy\n\nFlutter Developer\n\nApp \ndesigner",
                                                      style: TextStyle(
                                                        fontFamily: 'Segoe UI',
                                                        fontSize: 10.sp,
                                                        color: const Color(
                                                            0xFF2BAD93),
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )));
                              },
                            ),
                            TextButton(
                              child: Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 12.sp,
                                  color: const Color(0xFF688D85),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: Text(""),
                                    ));
                              },
                            ),
                            TextButton(
                              child: Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 12.sp,
                                  color: const Color(0xFF688D85),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      content: Text(""),
                                    ));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 150.h,
                    margin: EdgeInsets.only(top: 70.h),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75.r),
                          border: Border.all(
                            width: 3.0,
                            color: Colors.white,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            user.photoURL!,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10.h,
                    left: 150.w,
                    child: Text(
                      'Version = 1.0.1',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 10.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchURLfb () async{
    if(!await launch(_urlfb)) throw 'Couldnot launch $_urlfb';
  }
  void _launchURLyou () async{
    if(!await launch(_urlyou)) throw 'Couldnot launch $_urlyou';
  }
  void _launchURLins () async{
    if(!await launch(_urlins)) throw 'Couldnot launch $_urlins';
  }
  void _launchURLtwi () async{
    if(!await launch(_urltwi)) throw 'Couldnot launch $_urltwi';
  }
  void _launchURLweb () async{
    if(!await launch(_urlweb)) throw 'Couldnot launch $_urlweb';
  }


}
