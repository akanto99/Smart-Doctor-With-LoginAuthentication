import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_doctor/Screens/Findhospitalpage/govt_hospital.dart';
import 'package:smart_doctor/Screens/Findhospitalpage/private_hospital.dart';
import 'package:smart_doctor/Screens/Findhospitalpage/top_ten_gov_hospital.dart';
import 'package:smart_doctor/Screens/Findhospitalpage/top_ten_pri_hospital.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindHospotal extends StatefulWidget {
  const FindHospotal({Key? key}) : super(key: key);

  @override
  _FindHospotalState createState() => _FindHospotalState();
}

class _FindHospotalState extends State<FindHospotal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2BAD93),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            SizedBox(
              height: 150.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Find Hospital",
                          style: TextStyle(
                              fontSize: 22.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(backgroundColor: Colors.white,
                        child: Icon(Icons.location_on_outlined,color: Colors.red,),
                      )
                    ],
                  ),
                  Container(
                    height: 100.h,
                    width: 220.w,
                    margin: EdgeInsets.only(top: 15.h,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        image: DecorationImage(
                            image: AssetImage('assets/images/hospital.jpg'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28.r),
                      topRight: Radius.circular(28.r),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFF2BAD93),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GovtHospital()));
                              },
                              child: _buildContainer1('Govt. Hospital','সরকারি হাসপাতাল'),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrivateHospital()));
                                },
                                child: _buildContainer1('Private Hospital','প্রাইভেট হাসপাতাল'),

                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopTenGovHospital()));
                          },
                          child: _buildContainer('Top Ten Govt. Hospital','সেরা দশটি সরকারি হাসপাতাল'),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TopTenPriHospital()));
                          },
                          child: _buildContainer('Top Ten Private Hospital', 'সেরা দশটি প্রাইভেট হাসপাতাল')
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          '"আপনাদের সুস্থতা আমাদের একান্ত কাম্য"',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildContainer1(
      String engText,
      String bnText,
  ) {
    return Container(
      width: 150.w,
      height: 63.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFF12E6BC),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            engText,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            bnText,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      )
    );
  }

  Widget _buildContainer(
      String engText,
      String bnText,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFF2BAD93),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: Offset(0, 3.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            engText,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            bnText,
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      )
    );
  }
}
