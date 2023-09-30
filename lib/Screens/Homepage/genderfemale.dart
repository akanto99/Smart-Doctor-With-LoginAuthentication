import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_doctor/Screens/Homepage/genderfemaledescription.dart';
import 'package:smart_doctor/models/malefemale.dart';

class GenderFemale extends StatefulWidget {
  const GenderFemale({Key? key}) : super(key: key);

  @override
  _GenderFemaleState createState() => _GenderFemaleState();
}

class _GenderFemaleState extends State<GenderFemale> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFF2BAD93),
            body: Stack(
              children: [
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
                  top: 40.h,
                  right: 90.w,
                  child: Container(
                    width: 190.w,
                    height: 125.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.r),
                      image: DecorationImage(
                        image: AssetImage('assets/images/sdlogo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 530.h,
                  margin: EdgeInsets.only(top: 200.h),
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
                      topRight: Radius.circular(45.r),
                      topLeft: Radius.circular(45.r),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 120.w,
                        top: -6.h,
                        child: Container(
                          width: 114.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Colors.greenAccent,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 70.w,
                        top: -5.h,
                        child: Container(
                          width: 214.w,
                          height: 26.h,
                          padding: EdgeInsets.only(top: 5.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            color: Colors.greenAccent,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("বিভিন্ন রোগ ও ঔষধের নাম", style: TextStyle(fontSize: 12.sp),),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.w,
                        top: 50.h,
                        child: SingleChildScrollView(
                          child: Container(
                              width: 325.w,
                              height: 400.h,
                              child: ListView.builder(
                                  itemCount: genderFemaleDataList.length,
                                  itemBuilder: (context,index) {
                                    MaleFemaleData gfd = genderFemaleDataList[index];
                                    return Container(
                                      width: 90.w,
                                      padding: EdgeInsets.only(bottom: 8.w),
                                      margin: EdgeInsets.only(bottom: 9.h),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20.r),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            const Color(0xFF2BAD93),
                                            const Color(0xFF16574A)
                                          ],
                                        ),
                                      ),
                                      child: TextButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        GenderFemaleDescription(gfd)));
                                          },
                                          child: Row(
                                            children: [
                                              SizedBox(width: 20.w,),
                                              Text(
                                                gfd.title!,
                                                style: TextStyle(
                                                    fontFamily: 'Segoe UI',
                                                    fontSize: 18.sp,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.8.h
                                                ),
                                              ),
                                              Spacer(),
                                              Icon(Icons.arrow_forward_ios),
                                              SizedBox(width: 10.w,)
                                            ],
                                          )
                                      ),
                                    );
                                  })
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
