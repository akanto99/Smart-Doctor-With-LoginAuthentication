import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_doctor/Screens/Homepage/diseasemedicine.dart';
import 'package:smart_doctor/Screens/Homepage/naturaltreatmentlist.dart';
import 'package:smart_doctor/Screens/Homepage/primarytreatmentdescription.dart';
import 'package:smart_doctor/models/primarytreatment.dart';

class GeneralTreatment extends StatelessWidget {
  const GeneralTreatment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF2BAD93),
        body: Align(
          alignment: Alignment(0.72, 1.0),
          child: SizedBox(
              width: 499.w,
              height: 945.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
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
                  Positioned(
                    top: 50.h,
                    right: 90.w,
                    child: Container(
                      width: 190.w,
                      height: 125.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32.r),
                        border: Border.all(
                          color: Colors.white,width: 2.w,
                        ),
                      ),
                      child: Lottie.network('https://assets6.lottiefiles.com/private_files/lf30_brec9S.json'),
                    ),
                  ),
                  // Positioned(
                  //   right: 80.w,
                  //   top: 160.h,
                  //   child: Container(
                  //     width: 214.w,
                  //     height: 50.h,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(16.r),
                  //       color: Colors.white,
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         'Primary Treatment',
                  //         style: TextStyle(
                  //           fontFamily: 'Segoe UI',
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 20.sp,
                  //           color: const Color(0xFF2BAD93),
                  //           // color: Colors.black,
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: 530.h,
                    margin: EdgeInsets.only(top: 198.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color(0xffffffff),
                          Color(0xFF2BAD93),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35.r),
                        topLeft: Radius.circular(35.r),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20.w,
                          top: 10.h,
                          child: Text('Primary',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ),
                        // Positioned(
                        //   right: 80.w,
                        //   top: -40.h,
                        //   child: Container(
                        //     width: 214.w,
                        //     height: 50.h,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(16.r),
                        //       color: Colors.white,
                        //       boxShadow: [
                        //         BoxShadow(
                        //           color: Colors.black.withOpacity(0.16),
                        //           offset: Offset(0, 3.0),
                        //           blurRadius: 6.0,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        //primary treatment
                        Positioned(
                          left: 20.w,
                          top: 35.h,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                                width: 325.w,
                                height: 40.h,
                                child: ListView.builder(
                                    itemCount: primaryTreatmentDataList.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context,index) {
                                      PrimaryTreatmentData ptd = primaryTreatmentDataList[index];
                                  return Container(
                                    width: 90.w,
                                    margin: EdgeInsets.only(right: 10.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          const Color(0xFF2BAD93),
                                          const Color(0xFF23FFA0)
                                        ],
                                      ),
                                      //border: Border.all(color: Colors.black54)
                                    ),
                                    child: TextButton(
                                      onPressed: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PrimaryTreatmentDescription(ptd)));
                                      },
                                      child: Text(
                                        ptd.title!,
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 12.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          height: 0.8.h
                                        ),
                                      ),
                                    ),
                                  );
                                })
                              ),
                          ),
                        ),

                        //medicine

                        Positioned(
                          right: 23.w,
                          left: 23.w,
                          top: 85.h,
                          child: Container(
                            width: 359.w,
                            height: 40.h,
                            padding: EdgeInsets.symmetric(horizontal: 20.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.r),
                              color: const Color(0xFFE3FFFD),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.16),
                                  offset: Offset(0, 3.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      (DiseaseMedicine()),
                                    ));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                Text(
                                  'বিভিন্ন রোগ ও ঔষধের নাম',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 16.sp,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: Colors.black38,
                                ),
                              ]),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 23.w,
                          top: 135.h,
                          child: InkWell(
                            child: Container(
                              width: 152.w,
                              height: 40.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.r),
                                ),
                                // color: const Color(0xFF12E6BC),
                                color: Colors.white,
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Male',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14.0.sp,
                                        color: const Color(0xFF688D85),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                     Icon(Icons.medical_services_outlined),
                                  ]),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: Text("Updateing soon \nWorking on it"),
                                  ));
                            },
                          ),
                        ),
                        Positioned(
                          right: 23.w,
                          top: 135.h,
                          child: InkWell(
                            child: Container(
                              width: 152.w,
                              height: 40.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.r),
                                ),
                                // color: const Color(0xFF12E6BC),
                                color: Colors.white,
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                        fontFamily: 'Segoe UI',
                                        fontSize: 14.0.sp,
                                        color: const Color(0xFF688D85),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                     Icon(Icons.medical_services_outlined),
                                  ]),
                            ),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: Text("Updateing soon \nWorking on it"),
                                  ));
                            },
                          ),
                        ),

                        //Natural treatment
                        Positioned(
                          left: 20.w,
                          bottom: 260.h,
                          child: Text('Natural',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        Positioned(
                          right: 20.w,
                          bottom: 190.h,
                          child: Container(
                            alignment: Alignment(-0.84, 0.03),
                            width: 320.w,
                            height: 65.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.r),
                              image: DecorationImage(
                                image: AssetImage('assets/images/arjun.jpg'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.16),
                                  offset: Offset(0, 3.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          (NaturalTreatmentList()),
                                    ));
                              },
                              child: Text(
                                'Arjun - অর্জুন গাছ',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 25.sp,
                                  color: Colors.black,
                                  backgroundColor: Colors.white38,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 20.w,
                          bottom: 118.h,
                          child: Container(
                            alignment: Alignment(-0.84, 0.03),
                            width: 320.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18.r),
                              image: DecorationImage(
                                image: AssetImage('assets/images/amla.jpg'),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.16),
                                  offset: Offset(0, 3.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          (NaturalTreatmentList()),
                                    ));
                              },
                              child: Text(
                                'Amla - আমলকি',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 25.sp,
                                  color: Colors.black,
                                  backgroundColor: Colors.white38,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 210.w,
                          bottom: 55.h,
                          child: Container(
                            alignment: Alignment(-0.84, 0.03),
                            height: 80.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          (NaturalTreatmentList()),
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFFffffff),
                              ),
                              child: Text(
                                'see more...',
                                style: TextStyle(
                                  fontFamily: 'Segoe UI',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w300,
                                  color: const Color(0xFF2BAD93),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
