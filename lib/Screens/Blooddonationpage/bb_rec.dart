import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class BBReceived extends StatelessWidget {
  String name, area, number;

  BBReceived(this.name, this.area, this.number);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF2BAD93),
          body: Column(
              children: [
                SizedBox(
                  height: 200.h,
                  child: Column(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            child: Container(
                              height: 200.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Lottie.network(
                                'https://assets8.lottiefiles.com/packages/lf20_Y4K852.json',
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 2,
                              right: 130.w,
                              child: Text(
                                'Wear Mask\nGet Vaccinated\nStay Safe',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19.sp,
                                    color: Colors.white),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
               SizedBox(
                 height: 10.h,
               ),
               Expanded(
                 child: Container(
                   height: MediaQuery.of(context).size.height,
                   width: MediaQuery.of(context).size.width,
                   decoration: BoxDecoration(
                     color: Colors.white70,
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(28.r),
                       topLeft: Radius.circular(28.r),
                     ),
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 25.h),
                       Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Container(
                             height: 80.h,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.r),
                               color: Colors.white,
                             ),
                             child: Padding(
                               padding: EdgeInsets.all(12.w),
                               child: Center(
                                   child: Text(
                                     '$name',
                                     style: TextStyle(
                                         fontSize: 20.sp,
                                         fontWeight: FontWeight.bold,
                                         color: Colors.red),
                                   )),
                             )),
                       ),
                       SizedBox(height: 20.h),
                       Container(
                         height: 150.h,
                         width: 150.w,
                         decoration: BoxDecoration(
                             shape: BoxShape.circle,
                             image: DecorationImage(
                                 image: AssetImage(
                                     'assets/images/blood-drop.png'),
                                 fit: BoxFit.cover)),
                       ),
                       SizedBox(height: 20.h),
                       TextButton(
                         child: Container(
                           height: 40.h,
                           width: 200.w,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20.r),
                               color: Colors.white70,
                               boxShadow: [
                                 BoxShadow(
                                   color: Color.fromRGBO(0, 0, 0, 0.1),
                                   offset: Offset(4.0,2.0),
                                   blurRadius: 3.0,
                                   spreadRadius: 1.0,
                                 ),
                                 BoxShadow(
                                   color: Color.fromRGBO(255, 255, 255, 0.9),
                                   offset: Offset(-4.0,-2.0),
                                   blurRadius: 1.0,
                                   spreadRadius: 1.0,
                                 ),
                               ]),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                                Text(
                                 'Call Now',style: TextStyle(color: Colors.green,fontSize: 12.sp,fontWeight: FontWeight.w500),
                               ),
                                Icon(Icons.call,color: Colors.green,),
                             ],
                           ),
                         ),
                         onPressed: () async {
                           await FlutterPhoneDirectCaller.callNumber(number);
                         },
                       ),
                     ],
                   ))
               )
              ],
            ),
      ),
    );
  }
}
