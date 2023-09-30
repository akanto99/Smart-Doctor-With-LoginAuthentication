import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_doctor/Screens/Ambulance/underDiv.dart';

class Division extends StatelessWidget {
  const Division({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2BAD93),
      body: Column(
        children: [
          SizedBox(
            height: 45.h,
          ),
          Container(
            height: 15.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'দ্রুত এম্বুলেন্স খুঁজুন',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            child: Center(
              child: Text(
                'Find an ambulance easily & quickly',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 150.h,
            width: 400.w,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 400.h,
                    width: 400.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                    ),
                    child: Lottie.network(
                      "https://assets1.lottiefiles.com/packages/lf20_sy2feyup.json",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50.h,
            width: 280.w,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                      height: 40.h,
                      width: 280.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        'Division Of Bangladesh',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ))),
                  top: 8.w,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35.r),
                      topLeft: Radius.circular(35.r),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Stack(
                            children: [
                              Positioned(
                                //Dhaka
                                child: InkWell(
                                  child: Container(
                                      height: 65.h,
                                      width: 450.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        color: Color(0xFF2BAD93),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          leading: Text(
                                            'Dhaka ( ঢাকা )',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22.sp,
                                                color: Colors.white),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                          ),
                                        ),
                                      )),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                UnderDhaka()));
                                  },
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 10.h),
                          //Chittagong

                          InkWell(
                            child: Container(
                              height: 70.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Chittagong ( চট্টগ্রাম )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.sp,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderChittagong()));
                            },
                          ),

                          SizedBox(
                            height: 10.h,
                          ),

                          //Borishal

                          InkWell(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Borisal ( বরিশাল )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderBarishal()));
                            },
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          //Khulna
                          InkWell(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Khulna ( খুলনা )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderKhulna()));
                            },
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //Mymonshingh

                          InkWell(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Mymensingh ( ময়মনসিংহ )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          UnderMoimonShingh()));
                            },
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //Rajshahi

                          InkWell(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Rajshahi ( রাজশাহী )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderRazshahi()));
                            },
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //RangPur

                          InkWell(
                            child: Container(
                              height: 70,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Rangpur ( রংপুর )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderRangpur()));
                            },
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          //Syhlet

                          InkWell(
                            child: Container(
                              height: 70,
                              width: 460,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF2BAD93),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Text(
                                    'Sylhet ( সিলেট )',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        color: Colors.white),
                                  ),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UnderSyhlet()));
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
